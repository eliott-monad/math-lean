/-
# Lonely Runner - the pair-sum sieve modulus `2n - 1`

Provenance: `eliottcassidy2000/math` - THM-401
(`01-canon/theorems/THM-401-pair-sum-sieve-modulus-is-2n-minus-1.md`, commit `9f7fc6e`).
The informal theorem identifies the pair-sum sieve's floor-companion modulus with
`C = 2n - 1` in three elementary ways: the Farey determinant of `1/n` and `2/(2n-1)`,
the odd antipodal summand shells modulo `C`, and the odd-square identity
`8 * (n.choose 2) + 1 = C^2`.
-/
import Mathlib

namespace Math.LonelyRunner

/-- The odd pair-sum/summand-shell modulus `C = 2n - 1`. -/
def pairSumModulus (n : ℕ) : ℕ := 2 * n - 1

/-- **Farey determinant identity.**  The determinant for `1/n` and `2/(2n-1)` is `-1`. -/
theorem pairSum_farey_det (n : ℕ) :
    (1 : ℤ) * (2 * (n : ℤ) - 1) - 2 * (n : ℤ) = -1 := by
  ring

/-- Equivalently, the absolute determinant is `1`, the Farey-neighbor arithmetic criterion. -/
theorem pairSum_farey_abs_det (n : ℕ) :
    Int.natAbs ((1 : ℤ) * (2 * (n : ℤ) - 1) - 2 * (n : ℤ)) = 1 := by
  rw [pairSum_farey_det]
  norm_num

/-- For `n >= 1`, the modulus `2n-1` is odd. -/
theorem pairSumModulus_odd (n : ℕ) (hn : 1 ≤ n) : Odd (pairSumModulus n) := by
  rcases n with _ | m
  · omega
  · refine ⟨m, ?_⟩
    unfold pairSumModulus
    omega

/-- The `a`th summand shell: the antipodal pair `{a, C-a}`. -/
def summandShell (n a : ℕ) : Finset ℕ := {a, pairSumModulus n - a}

/-- The two entries of a summand shell add to the modulus. -/
theorem summandShell_add_to_modulus {n a : ℕ} (ha : a ≤ pairSumModulus n) :
    a + (pairSumModulus n - a) = pairSumModulus n :=
  Nat.add_sub_of_le ha

/-- There is no fixed midpoint shell: for `1 <= a <= n-1`, `a` is not its antipode. -/
theorem summandShell_no_midpoint {n a : ℕ} (ha0 : 1 ≤ a) (ha : a ≤ n - 1) :
    a ≠ pairSumModulus n - a := by
  intro h
  have hleC : a ≤ pairSumModulus n := by
    unfold pairSumModulus
    omega
  have hsum : a + a = a + (pairSumModulus n - a) := congrArg (fun x => a + x) h
  have h2a : 2 * a = pairSumModulus n := by
    calc
      2 * a = a + a := by ring
      _ = a + (pairSumModulus n - a) := hsum
      _ = pairSumModulus n := Nat.add_sub_of_le hleC
  unfold pairSumModulus at h2a
  omega

/-- Every nonzero residue below `C = 2n-1` lies in one of the `n-1` antipodal shells. -/
theorem residue_mem_some_summandShell {n r : ℕ} (hn : 1 ≤ n)
    (hr0 : 1 ≤ r) (hrC : r < pairSumModulus n) :
    ∃ a, 1 ≤ a ∧ a ≤ n - 1 ∧ (r = a ∨ r = pairSumModulus n - a) := by
  by_cases hle : r ≤ n - 1
  · exact ⟨r, hr0, hle, Or.inl rfl⟩
  · refine ⟨pairSumModulus n - r, ?_, ?_, Or.inr ?_⟩
    · omega
    · unfold pairSumModulus at *
      omega
    · omega

private theorem eight_mul_choose_two (n : ℕ) :
    8 * (n * (n - 1) / 2) = 4 * n * (n - 1) := by
  obtain ⟨k, hk⟩ := (even_iff_two_dvd.mp (Nat.even_mul_pred_self n))
  calc
    8 * (n * (n - 1) / 2) = 8 * k := by
      rw [hk]
      norm_num
    _ = 4 * (2 * k) := by ring
    _ = 4 * (n * (n - 1)) := by rw [← hk]
    _ = 4 * n * (n - 1) := by ring

/-- **Odd-square identity.**  `2n-1` is the odd-square companion of the triangular count
`n.choose 2`: `8 * C(n,2) + 1 = (2n-1)^2`. -/
theorem pairSum_odd_square (n : ℕ) (hn : 1 ≤ n) :
    8 * n.choose 2 + 1 = pairSumModulus n ^ 2 := by
  rcases n with _ | m
  · omega
  · rw [Nat.choose_two_right]
    rw [eight_mul_choose_two]
    unfold pairSumModulus
    have hsub : 2 * (m + 1) - 1 = 2 * m + 1 := by omega
    rw [hsub]
    simp
    ring_nf

/-- The arithmetic core of THM-401: the Farey, shell, and triangular-count identities all use
the same modulus `C = 2n-1`. -/
theorem pairSum_modulus_identity (n : ℕ) (hn : 1 ≤ n) :
    Int.natAbs ((1 : ℤ) * (2 * (n : ℤ) - 1) - 2 * (n : ℤ)) = 1 ∧
      Odd (pairSumModulus n) ∧
      8 * n.choose 2 + 1 = pairSumModulus n ^ 2 := by
  exact ⟨pairSum_farey_abs_det n, pairSumModulus_odd n hn, pairSum_odd_square n hn⟩

end Math.LonelyRunner
