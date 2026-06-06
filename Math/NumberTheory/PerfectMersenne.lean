/-
# Perfect numbers, Mersenne primes, and the forbidden H-spectrum: everything meets at 6 and 7

Provenance: `eliottcassidy2000/math` — HYP-2290 (S632).  `6` — the unique doubled-prime/tripled-prime (`2·3 = 3·2`,
S630), the hexagonal/`π/3`/`dZ=1/6` meeting point (S623–S628), `lcm(2,3)` — is also the **first perfect number**
(`6 = 1+2+3 = 2·M₂`, Euclid–Euler with the first Mersenne prime `M₂ = 3`).  The **forbidden tournament H-values**
`{7, 21}` (THM-029/079, the cube-root cyclotomic gaps) are **Mersenne-monoid elements**: `7 = M₃ = 2³−1 = Φ₃(2)`
(the 2nd Mersenne prime = the forbidden atom) and `21 = M₂·M₃`.  And the **second perfect number `28 = 2²·M₃`** is
built from the forbidden-H Mersenne prime `7`.  Even perfect numbers are even, hence never an H-value (Rédei: `H` is
odd) — the achievable H-spectrum is a sub-monoid of the odds, bridging to the odd-perfect-number problem.
-/
import Mathlib
import Math.Tournaments.CyclotomicSeven

namespace Math.NumberTheory

open Polynomial

/-- `6` is the first perfect number (`6 = 1+2+3`), via Euclid: `2^1 · M₂`. -/
theorem six_perfect : Nat.Perfect 6 := ⟨by decide, by norm_num⟩

/-- `28` is the second perfect number, via Euclid: `2^2 · M₃`. -/
theorem twentyeight_perfect : Nat.Perfect 28 := ⟨by decide, by norm_num⟩

/-- `M₂ = 3`, the first Mersenne prime. -/
theorem mersenne_two : mersenne 2 = 3 := by decide

/-- `M₃ = 7`, the second Mersenne prime — the forbidden H-atom. -/
theorem mersenne_three : mersenne 3 = 7 := by decide

/-- **`6 = 2·M₂`**: the first perfect number is the doubled first Mersenne prime — the same `6 = 2·3` that is the
unique doubled-prime/tripled-prime (S630) and the hexagonal/`π/3` meeting point. -/
theorem six_eq_two_mul_mersenne_two : 6 = 2 * mersenne 2 := by decide

/-- **`28 = 2²·M₃`**: the second perfect number is built from `M₃ = 7`, the forbidden H-value. -/
theorem twentyeight_eq_four_mul_mersenne_three : 28 = 2 ^ 2 * mersenne 3 := by decide

/-- **The forbidden H-value `7` is the Mersenne prime `M₃ = Φ₃(2)`.**  `7 = 2³−1 = M₃` and `Φ₃(2) = 7` (S628): the
forbidden tournament value, the Mersenne prime, and the cube-root cyclotomic value are one number. -/
theorem forbidden_seven_eq_mersenne_eq_cyclotomic :
    ((mersenne 3 : ℕ) : ℤ) = (cyclotomic 3 ℤ).eval 2 := by
  rw [Math.Tournaments.cyclotomic_three_eval_two, mersenne_three]; norm_num

/-- **Even perfect numbers are never H-values.**  `6` and `28` are even, but every Hamiltonian-path count `H` is odd
(Rédei) — so the perfect numbers lie outside the achievable H-spectrum (a sub-monoid of the odds). -/
theorem six_not_odd : ¬ Odd 6 := by decide

theorem twentyeight_not_odd : ¬ Odd 28 := by decide

end Math.NumberTheory
