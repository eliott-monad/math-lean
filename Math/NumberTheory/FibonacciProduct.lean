/-
# Fibonacci product identity core for interval tournaments

Provenance: `eliottcassidy2000/math` -
`01-canon/theorems/THM-150-product-identity.md`.

The informal theorem proves

  `∏_{k=1}^m (1 + Q_k) = F_{2m+1}`

for the interval tournament on `Z_p`, `p = 2m + 1`, once the elementary symmetric
functions of the `Q_k` are identified with the Morgan-Voyce coefficients
`choose (m + j) (2j)`.  This file formalizes the arithmetic closing step:
the Morgan-Voyce specialization at `1` is the odd Fibonacci number.
-/
import Mathlib.Data.Nat.Fib.Basic
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Algebra.BigOperators.NatAntidiagonal
import Mathlib.Tactic

namespace Math.NumberTheory

open Finset

/-- The Morgan-Voyce `B_m` polynomial evaluated at `1`, written in the coefficient
form used by the interval-tournament product identity. -/
def morganVoyceBOne (m : ℕ) : ℕ :=
  ∑ j ∈ range (m + 1), Nat.choose (m + j) (2 * j)

/-- **THM-150 arithmetic core.**  The Morgan-Voyce specialization
`B_m(1) = ∑_{j=0}^m choose (m+j) (2j)` is the odd Fibonacci number `F_{2m+1}`.

The proof rewrites Mathlib's antidiagonal Fibonacci formula
`F_{n+1} = ∑_{a+b=n} choose a b` at `n = 2m`.  The lower half of the
antidiagonal contributes zero, and the upper half is exactly the displayed
Morgan-Voyce sum after binomial symmetry. -/
theorem morganVoyceBOne_eq_fib_odd (m : ℕ) :
    morganVoyceBOne m = Nat.fib (2 * m + 1) := by
  unfold morganVoyceBOne
  rw [Nat.fib_succ_eq_sum_choose]
  rw [Finset.Nat.sum_antidiagonal_eq_sum_range_succ]
  symm
  have hsplit :
      (∑ k ∈ range (2 * m + 1), Nat.choose k (2 * m - k)) =
        (∑ k ∈ range m, Nat.choose k (2 * m - k)) +
          ∑ j ∈ range (m + 1), Nat.choose (m + j) (2 * m - (m + j)) := by
    have h : 2 * m + 1 = m + (m + 1) := by omega
    rw [h, Finset.sum_range_add]
  rw [hsplit]
  have hzero : (∑ k ∈ range m, Nat.choose k (2 * m - k)) = 0 := by
    apply Finset.sum_eq_zero
    intro k hk
    apply Nat.choose_eq_zero_of_lt
    have hklt : k < m := by simpa using hk
    omega
  rw [hzero, zero_add]
  apply Finset.sum_congr rfl
  intro j hj
  have hjle : j ≤ m := Nat.lt_succ_iff.mp (by simpa using hj)
  have hsub : 2 * m - (m + j) = m - j := by omega
  rw [hsub]
  exact Nat.choose_symm_of_eq_add (by omega : m + j = (m - j) + 2 * j)

/-- Product form of THM-150 once the elementary-symmetric expansion has been
identified with the Morgan-Voyce coefficient sum. -/
theorem product_eq_fib_odd_of_morganVoyce_expansion {m : ℕ} (Q : Fin m → ℕ)
    (hQ : (∏ k, (1 + Q k)) = morganVoyceBOne m) :
    (∏ k, (1 + Q k)) = Nat.fib (2 * m + 1) := by
  rw [hQ, morganVoyceBOne_eq_fib_odd]

/-- The same product conclusion written with an explicit odd index `p = 2m + 1`. -/
theorem product_eq_fib_of_odd_index {m p : ℕ} (Q : Fin m → ℕ)
    (hp : p = 2 * m + 1)
    (hQ : (∏ k, (1 + Q k)) = morganVoyceBOne m) :
    (∏ k, (1 + Q k)) = Nat.fib p := by
  rw [hp]
  exact product_eq_fib_odd_of_morganVoyce_expansion Q hQ

end Math.NumberTheory
