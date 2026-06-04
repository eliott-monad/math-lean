/-
# Tournaments — the forbidden H-value 7 is cyclotomic: 7 = Φ₃(2) (the π/3 shared object)

Provenance: `eliottcassidy2000/math` — HYP-2265 (S628).  The permanently-forbidden tournament H-values `{7, 21}`
(THM-029/079) are **cyclotomic at 2**: `7 = Φ₃(2)` and `21 = 3·Φ₃(2)`, where `Φ₃ = X² + X + 1` is the 3rd
cyclotomic polynomial (roots the primitive cube roots of unity `e^{±2πi/3}`).  This places the H-impossibility at the
**angle π/3** — the same shared object as the Eisenstein/triangular unit-distance lattice (`dZ = 1/6`, HYP-2235/S623),
the cube-root Lee–Yang zeros of the tournament partition function (`±2π/3`), the Jacobsthal forbidden value
`J(4) = 21 = 3·Φ₃(2)` (S627), and the `0.014` exponent excess `Cl₂(π/3) − 1` of the unit-distance disproof / the
self-complementary (CM-conjugation-fixed) shape growth (HYP-2184/2186).
-/
import Mathlib

namespace Math.Tournaments

open Polynomial

/-- **`7 = Φ₃(2)`.**  The forbidden tournament H-value `7` is the 3rd cyclotomic polynomial evaluated at `2`:
`Φ₃(X) = 1 + X + X²`, `Φ₃(2) = 1 + 2 + 4 = 7`.  (Equivalently `(2³−1)/(2−1)`; the cube-root / π/3 structure.) -/
theorem cyclotomic_three_eval_two : (cyclotomic 3 ℤ).eval 2 = 7 := by
  haveI : Fact (Nat.Prime 3) := ⟨by norm_num⟩
  rw [cyclotomic_prime ℤ 3, eval_finset_sum]
  simp only [eval_pow, eval_X]
  rw [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_one]
  norm_num

/-- **`21 = 3·Φ₃(2)`.**  The second forbidden value is `3·Φ₃(2) = Φ₂(2)·Φ₃(2)` (`Φ₂(2) = 3`). -/
theorem twentyone_eq_three_mul_cyclotomic : 3 * (cyclotomic 3 ℤ).eval 2 = 21 := by
  rw [cyclotomic_three_eval_two]; norm_num

end Math.Tournaments
