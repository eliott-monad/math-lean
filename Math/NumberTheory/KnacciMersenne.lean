/-
# The k-nacci Mersenne identity: Newton-range arithmetic core

Provenance: `eliottcassidy2000/math` -
`01-canon/theorems/THM-227-knacci-mersenne.md` (source commit `9f7fc6e`).

The informal theorem states that if `M_k` is the k-nacci companion matrix, then
`Tr(M_k^n) = 2^n - 1` for `1 <= n <= k`.  Newton's identities reduce the trace
calculation in this range to the recurrence

  `t n = t 0 + t 1 + ... + t (n - 1) + n`, with `t 0 = 0`.

This file formalizes that recurrence engine.  The remaining matrix-specific work is
to prove that the companion-matrix trace sequence satisfies the displayed recurrence.
-/
import Mathlib

namespace Math.NumberTheory

open Finset

/-- The initial partial sums of powers of two give the Mersenne numbers. -/
lemma sum_pow_two_eq_mersenne (n : ℕ) :
    (∑ m ∈ range n, ((2 : ℤ) ^ m)) = 2 ^ n - 1 := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [sum_range_succ, ih]
      ring

/-- **THM-227 Newton-range core.**  Any integer-valued sequence satisfying the
k-nacci Newton recurrence throughout `1..k` is forced to be Mersenne in that range:
`t n = 2^n - 1`.

For the actual k-nacci companion matrix, `t n` is `Tr(M_k^n)`.  Newton's identities
provide `hrec`; this theorem is the induction step that turns that recurrence into
the closed form. -/
theorem newtonRange_mersenne {k : ℕ} {t : ℕ → ℤ} (h0 : t 0 = 0)
    (hrec : ∀ n, 1 ≤ n → n ≤ k →
      t n = (∑ m ∈ range n, t m) + (n : ℤ)) :
    ∀ n, n ≤ k → t n = (2 : ℤ) ^ n - 1 := by
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
      intro hnle
      cases n with
      | zero =>
          simp [h0]
      | succ n =>
          have hrecn := hrec (n + 1) (Nat.succ_pos n) hnle
          have hsum : (∑ m ∈ range (n + 1), t m) =
              ∑ m ∈ range (n + 1), ((2 : ℤ) ^ m - 1) := by
            apply sum_congr rfl
            intro m hm
            have hmlt : m < n + 1 := mem_range.mp hm
            have hmk : m ≤ k := le_trans (Nat.le_of_lt_succ hmlt)
              (le_trans (Nat.le_succ n) hnle)
            exact ih m hmlt hmk
          calc
            t (n + 1) = (∑ m ∈ range (n + 1), t m) + (n + 1 : ℤ) := hrecn
            _ = (∑ m ∈ range (n + 1), ((2 : ℤ) ^ m - 1)) + (n + 1 : ℤ) := by
                rw [hsum]
            _ = (2 : ℤ) ^ (n + 1) - 1 := by
                rw [sum_sub_distrib, sum_pow_two_eq_mersenne, sum_const, card_range]
                ring_nf

/-- Top-of-range specialization: the k-th trace value is the k-th Mersenne number
whenever the Newton recurrence holds up to `k`. -/
theorem newtonRange_top_mersenne {k : ℕ} {t : ℕ → ℤ} (h0 : t 0 = 0)
    (hrec : ∀ n, 1 ≤ n → n ≤ k →
      t n = (∑ m ∈ range n, t m) + (n : ℤ)) :
    t k = (2 : ℤ) ^ k - 1 :=
  newtonRange_mersenne h0 hrec k le_rfl

end Math.NumberTheory
