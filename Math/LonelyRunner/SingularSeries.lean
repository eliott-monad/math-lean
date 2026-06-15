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

end

end Math.LonelyRunner
