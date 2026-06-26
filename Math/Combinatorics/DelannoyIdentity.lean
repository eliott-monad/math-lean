/-
# The Delannoy closed form for the tournament Fourier weight

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-218-delannoy-identity.md`.

THM-218 identifies the tournament Fourier weight `g_k(m)` with the weighted
Delannoy diagonal-step sum

`k * g_k(m) = Σ_j j * choose k j * choose m j * 2^(j-1)`.

The surrounding tournament/Fourier definition of `g_k(m)` is not present in this
Lean repo yet, so this file formalizes the closed-form carrier itself over `ℚ`
and records the source's immediate consequences: the `k ↔ m` duality and the
boundary values `g_k(1) = 1`, `g_k(2) = 2k`.
-/
import Mathlib

open scoped BigOperators

namespace Math.Combinatorics

/-- The weighted Delannoy diagonal-step total
`Σ_j j * choose k j * choose m j * 2^(j-1)`, the numerator `k * g_k(m)`
from THM-218. -/
noncomputable def delannoyDiagonalWeight (k m : ℕ) : ℚ :=
  ∑ j ∈ Finset.range (Nat.min k m + 1),
    (j : ℚ) * (Nat.choose k j : ℚ) * (Nat.choose m j : ℚ) * (2 : ℚ) ^ (j - 1)

/-- The Delannoy closed-form carrier for `g_k(m)` from THM-218. -/
noncomputable def delannoyG (k m : ℕ) : ℚ :=
  delannoyDiagonalWeight k m / (k : ℚ)

/-- **THM-218 closed form.**  For the Delannoy carrier `g_k(m)`, multiplying
by `k` recovers the weighted diagonal-step total. -/
theorem delannoyG_closed_form (k m : ℕ) (hk : 1 ≤ k) :
    (k : ℚ) * delannoyG k m = delannoyDiagonalWeight k m := by
  unfold delannoyG
  rw [mul_div_cancel₀]
  exact_mod_cast Nat.ne_of_gt hk

/-- **Delannoy symmetry.**  The weighted diagonal-step total is symmetric in the
two endpoint coordinates. -/
theorem delannoyDiagonalWeight_comm (k m : ℕ) :
    delannoyDiagonalWeight k m = delannoyDiagonalWeight m k := by
  unfold delannoyDiagonalWeight
  have hmin : Nat.min k m + 1 = Nat.min m k + 1 :=
    congrArg (fun x => x + 1) (Nat.min_comm k m)
  rw [hmin]
  apply Finset.sum_congr rfl
  intro j _hj
  ring

/-- **Duality corollary of THM-218.**  The closed-form carrier satisfies
`k * g_k(m) = m * g_m(k)`. -/
theorem delannoyG_duality (k m : ℕ) (hk : 1 ≤ k) (hm : 1 ≤ m) :
    (k : ℚ) * delannoyG k m = (m : ℚ) * delannoyG m k := by
  rw [delannoyG_closed_form k m hk, delannoyG_closed_form m k hm,
    delannoyDiagonalWeight_comm]

/-- **First boundary value.**  The Delannoy closed-form carrier has
`g_k(1) = 1`. -/
theorem delannoyG_one (k : ℕ) (hk : 1 ≤ k) :
    delannoyG k 1 = 1 := by
  unfold delannoyG delannoyDiagonalWeight
  have hmin : Nat.min k 1 = 1 := Nat.min_eq_right hk
  rw [hmin]
  simp [Finset.sum_range_succ, Nat.choose_one_right, Nat.ne_of_gt hk]

/-- **Second boundary value.**  The Delannoy closed-form carrier has
`g_k(2) = 2k`. -/
theorem delannoyG_two (k : ℕ) (hk : 1 ≤ k) :
    delannoyG k 2 = 2 * k := by
  unfold delannoyG delannoyDiagonalWeight
  rcases Nat.eq_or_lt_of_le hk with rfl | hk1
  · norm_num [Finset.sum_range_succ]
  · have hk2 : 2 ≤ k := by omega
    have hmin : Nat.min k 2 = 2 := Nat.min_eq_right hk2
    rw [hmin]
    simp [Finset.sum_range_succ, Nat.choose_one_right, Nat.cast_choose_two]
    field_simp [show (k : ℚ) ≠ 0 by exact_mod_cast (Nat.ne_of_gt hk)]
    ring

end Math.Combinatorics
