/-
# Lonely Runner — the Delsarte linear program for the lonely measure

Provenance: `eliottcassidy2000/math` — HYP-2215 (S621).  The covering-depth distribution is a weight enumerator
(HYP-2210), so loneliness `p₀ > 0` is the value of a **Delsarte linear program**: maximize a Krawtchouk-positive
dual.  This file formalizes the LP skeleton that unifies every thread of the program.

* **Weak duality (`delsarte_lower_bound`).**  For any nonnegative weight distribution `p` and any *dual test
  function* `g` with `g w ≤ [w = w₀]` (below the indicator of the lonely weight), `∑_w g w · p w ≤ p w₀`.  Choosing
  `g = ∑_k c_k Kₖ` (a Krawtchouk combination) makes the left side `∑_k c_k ρ_k` computable from the known moments —
  the Delsarte lower bound on `p₀`.

* **Bonferroni duals are the diagonal Delsarte duals.**  The truncated inclusion-exclusion polynomial
  `g_m(w) = ∑_{k≤m} (−1)^k C(w,k)` has the closed form `(−1)^m C(w−1, m)` (`partial_alt_binom`), so it is `≤ [w=0]`
  **exactly when `m` is odd** (`alt_binom_dual_le_indicator`).  Hence every odd-order Bonferroni bound
  `p₀ ≥ T_m = ∑_{k≤m}(−1)^k S_k` is a feasible Delsarte dual; the Helly number is the first odd `m` with `T_m > 0`,
  and the Vitali wall is the LP never closing at finite order.  (At the LRC gap these diagonal duals are vacuous —
  the program's content is a better, off-diagonal Krawtchouk dual.)
-/
import Mathlib

namespace Math.LonelyRunner

open Finset

/-- **Delsarte weak duality.**  For a nonnegative weight distribution `p` and a dual test function `g` lying below
the indicator of the lonely weight `w₀` (`g w ≤ [w = w₀]`), the dual sum lower-bounds the lonely value:
`∑_w g w · p w ≤ p w₀`.  This is the LP skeleton: a feasible `g` certifies `p w₀ ≥ ∑_w g w · p w`. -/
theorem delsarte_lower_bound {ι : Type*} [Fintype ι] [DecidableEq ι]
    (p g : ι → ℝ) (w₀ : ι) (hp : ∀ w, 0 ≤ p w)
    (hg : ∀ w, g w ≤ if w = w₀ then 1 else 0) :
    ∑ w, g w * p w ≤ p w₀ := by
  calc ∑ w, g w * p w
      ≤ ∑ w, (if w = w₀ then (1 : ℝ) else 0) * p w :=
        Finset.sum_le_sum (fun w _ => mul_le_mul_of_nonneg_right (hg w) (hp w))
    _ = p w₀ := by
        simp only [ite_mul, one_mul, zero_mul]
        rw [Finset.sum_ite_eq' Finset.univ w₀ p]
        simp

/-- **Closed form of the Bonferroni dual polynomial.**  `∑_{k≤m} (−1)^k C(w+1, k) = (−1)^m C(w, m)` — the truncated
alternating binomial sum telescopes (Pascal) to a single binomial coefficient. -/
theorem partial_alt_binom (w m : ℕ) :
    ∑ k ∈ Finset.range (m + 1), (-1 : ℤ) ^ k * ((w + 1).choose k : ℤ)
      = (-1) ^ m * (w.choose m : ℤ) := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [Finset.sum_range_succ, ih, Nat.choose_succ_succ' w m]
    push_cast
    ring

/-- **Odd Bonferroni truncations are feasible Delsarte duals.**  For odd `m`, the dual polynomial
`g_m(w) = ∑_{k≤m} (−1)^k C(w,k)` satisfies `g_m(w) ≤ [w = 0]` for every `w`: it is `1` at `w = 0` and `≤ 0`
elsewhere (`= (−1)^m C(w−1,m) = −C(w−1,m) ≤ 0`).  Hence `p₀ ≥ T_m = ∑_{k≤m}(−1)^k S_k` via `delsarte_lower_bound`. -/
theorem alt_binom_dual_le_indicator {m : ℕ} (hm : Odd m) (w : ℕ) :
    ∑ k ∈ Finset.range (m + 1), (-1 : ℤ) ^ k * (w.choose k : ℤ) ≤ (if w = 0 then 1 else 0) := by
  rcases Nat.eq_zero_or_pos w with hw | hw
  · subst hw
    rw [if_pos rfl, Finset.sum_eq_single 0]
    · simp
    · intro k _ hk0
      rw [Nat.choose_eq_zero_of_lt (Nat.pos_of_ne_zero hk0)]; simp
    · intro h; exact absurd (Finset.mem_range.mpr (Nat.succ_pos m)) h
  · obtain ⟨w', rfl⟩ : ∃ w', w = w' + 1 := ⟨w - 1, by omega⟩
    rw [if_neg (by omega), partial_alt_binom w' m, hm.neg_one_pow, neg_one_mul]
    exact neg_nonpos.mpr (Int.natCast_nonneg _)

end Math.LonelyRunner
