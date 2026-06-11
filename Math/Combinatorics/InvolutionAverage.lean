/-
# Hermite coefficients for the tournament involution average

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-468-involution-average-hermite.md`.

THM-468 identifies the expected characteristic polynomial of the random tournament
skew matrix with the signless matching polynomial of `K_n`, equivalently with
`i^(-n) He_n(i x)` for the probabilists' Hermite polynomial.  The determinant/Pfaffian
average is not formalized here; this file records the exact Hermite coefficient
carrier used by that statement: the Hermite signs cancel under the `i`-substitution,
leaving the matching-count coefficient `choose n (2k) * (2k - 1)!!`.
-/
import Mathlib

open Polynomial

namespace Math.Combinatorics

/-- **Hermite/signless-matching coefficient.**  The coefficient indexed by a matching
support of size `2k` in the Hermite form of THM-468 is
`choose n (2k) * (2k - 1)!!` after the Hermite sign is removed.  This is the
coefficient appearing in
`E[det(xI+S)] = Σ_k choose n (2k) (2k-1)!! x^(n-2k)`. -/
theorem hermite_signless_matching_coeff (n k : ℕ) (hk : 2 * k ≤ n) :
    (-1 : ℤ) ^ k * coeff (hermite n) (n - 2 * k) =
      (Nat.choose n (2 * k) * Nat.doubleFactorial (2 * k - 1) : ℤ) := by
  have hn : n = 2 * k + (n - 2 * k) := by omega
  have hchoose :
      Nat.choose (2 * k + (n - 2 * k)) (n - 2 * k) = Nat.choose n (2 * k) := by
    rw [← hn]
    exact Nat.choose_symm hk
  have hchoose' :
      Nat.choose (2 * k + (n - 2 * k)) (2 * k) = Nat.choose n (2 * k) := by
    rw [← hn]
  have hsub : 2 * k + (n - 2 * k) - 2 * k = n - 2 * k := by omega
  rw [hn, hsub, coeff_hermite_explicit, hchoose, hchoose']
  have hsign : (-1 : ℤ) ^ k * (-1 : ℤ) ^ k = 1 := by
    rw [← pow_add, ← two_mul]
    simp
  exact (by
    have hcalc (a d c : ℤ) (ha : a * a = 1) : a * ((a * d) * c) = c * d := by
      calc
        a * ((a * d) * c) = (a * a) * (d * c) := by ring
        _ = c * d := by rw [ha]; ring
    exact hcalc ((-1 : ℤ) ^ k) (Nat.doubleFactorial (2 * k - 1) : ℤ)
      (Nat.choose n (2 * k) : ℤ) hsign)

end Math.Combinatorics
