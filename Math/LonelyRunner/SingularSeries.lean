/-
# Lonely Runner — the LRC(14) singular-series sinc kernel

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-503-lrc-singular-series-structure.md` (math repo commit
`8058679`).  This file formalizes the 7-vanishing arithmetic of the kernel
`s(t) = sin(πt/7)/(πt)` appearing in the LRC(14) singular-series correction.
-/

import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace Math.LonelyRunner

noncomputable section

/-- The LRC(14) singular-series sinc kernel `s(t) = sin(πt/7)/(πt)` on integer
frequencies. -/
def sinc7 (t : ℤ) : ℝ :=
  Real.sin (Real.pi * (t : ℝ) / 7) / (Real.pi * (t : ℝ))

/-- **7-vanishing.**  Away from the removable denominator at `t = 0`, the kernel
`sin(πt/7)/(πt)` vanishes exactly on multiples of `7`. -/
theorem sinc7_eq_zero_iff_dvd_seven {t : ℤ} (ht : t ≠ 0) :
    sinc7 t = 0 ↔ (7 : ℤ) ∣ t := by
  have htR : (t : ℝ) ≠ 0 := by exact_mod_cast ht
  have hden : Real.pi * (t : ℝ) ≠ 0 := mul_ne_zero Real.pi_ne_zero htR
  constructor
  · intro h
    have hsin : Real.sin (Real.pi * (t : ℝ) / 7) = 0 := by
      have h' : Real.sin (Real.pi * (t : ℝ) / 7) = 0 ∨ t = 0 := by
        simpa [sinc7] using h
      exact h'.resolve_right ht
    rcases Real.sin_eq_zero_iff.mp hsin with ⟨n, hn⟩
    have hreal : (t : ℝ) = (7 * n : ℤ) := by
      have hn' : (n : ℝ) * Real.pi = Real.pi * (t : ℝ) / 7 := by
        simpa [mul_div_assoc] using hn
      have hcancel : (n : ℝ) * 7 = (t : ℝ) := by
        field_simp [Real.pi_ne_zero] at hn'
        linarith
      norm_num [Int.cast_mul]
      linarith
    exact ⟨n, Int.cast_injective hreal⟩
  · rintro ⟨n, rfl⟩
    have harg : Real.pi * ((7 * n : ℤ) : ℝ) / 7 = (n : ℝ) * Real.pi := by
      norm_num [Int.cast_mul]
      ring
    unfold sinc7
    rw [harg, Real.sin_int_mul_pi]
    simp

/-- Any coefficient divisible by the apex prime `7` kills its sinc factor.  This
includes `t = 0`, where the denominator convention also gives value `0`. -/
theorem sinc7_eq_zero_of_seven_dvd {t : ℤ} (ht : (7 : ℤ) ∣ t) : sinc7 t = 0 := by
  by_cases hzero : t = 0
  · simp [sinc7, hzero]
  · exact (sinc7_eq_zero_iff_dvd_seven hzero).2 ht

/-- The elementary absolute bound used in the THM-503 pairwise convergence estimate. -/
theorem abs_sinc7_le (t : ℤ) :
    |sinc7 t| ≤ 1 / (Real.pi * |(t : ℝ)|) := by
  by_cases ht : t = 0
  · simp [sinc7, ht]
  · have htR : (t : ℝ) ≠ 0 := by exact_mod_cast ht
    have hden_pos : 0 < Real.pi * |(t : ℝ)| :=
      mul_pos Real.pi_pos (abs_pos.2 htR)
    calc
      |sinc7 t| =
          |Real.sin (Real.pi * (t : ℝ) / 7)| / |Real.pi * (t : ℝ)| := by
            rw [sinc7, abs_div]
      _ = |Real.sin (Real.pi * (t : ℝ) / 7)| / (Real.pi * |(t : ℝ)|) := by
            rw [abs_mul, abs_of_pos Real.pi_pos]
      _ ≤ 1 / (Real.pi * |(t : ℝ)|) :=
            div_le_div_of_nonneg_right (Real.abs_sin_le_one _) hden_pos.le

end

end Math.LonelyRunner
