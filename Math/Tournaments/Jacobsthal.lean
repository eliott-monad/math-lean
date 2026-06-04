/-
# Tournaments — the Jacobsthal chain (path independence polynomial = collinear unit-distance config)

Provenance: `eliottcassidy2000/math` — HYP-2260 (S627).  A collinear, unit-spaced point configuration has
unit-distance graph the **path** `P_n`, whose independence polynomial at `x = 2` (the H-weight) is the **Jacobsthal**
sequence `J`, obeying the `n−2` deletion-contraction recursion `J(n+2) = J(n+1) + 2·J(n)` (HYP-2250).  This is the
1-D "chain" face of the unit-distance ↔ tournament mapping (2-D triangular configs give denser graphs and larger H).
We formalize the closed form `3·J(n) = 2^{n+2} − (−1)^n`; in particular `J(4) = 21` — a Jacobsthal value that is a
*forbidden* tournament H (THM-079), since a path conflict graph is not realizable from a tournament's 3-cycles.
-/
import Mathlib

namespace Math.Tournaments

/-- The **Jacobsthal chain** `J`: the path independence polynomial at `x = 2`, `J(n+2) = J(n+1) + 2·J(n)`
(`1, 3, 5, 11, 21, 43, 85, …`). -/
def J : ℕ → ℤ
  | 0 => 1
  | 1 => 3
  | (n + 2) => J (n + 1) + 2 * J n

/-- **Closed form.**  `3·J(n) = 2^{n+2} − (−1)^n`.  (So `J(n) = (2^{n+2} − (−1)^n)/3`; the `n−2` recursion has the
explicit solution, the chain face of the partition function.) -/
theorem three_mul_J (n : ℕ) : 3 * J n = 2 ^ (n + 2) - (-1) ^ n := by
  induction n using Nat.twoStepInduction with
  | zero => decide
  | one => decide
  | more n ih1 ih2 =>
    have p2 : (2 : ℤ) ^ (n + 3) = 2 * 2 ^ (n + 2) := by ring
    have p3 : (2 : ℤ) ^ (n + 4) = 4 * 2 ^ (n + 2) := by ring
    have s1 : (-1 : ℤ) ^ (n + 1) = -(-1) ^ n := by rw [pow_succ]; ring
    have s2 : (-1 : ℤ) ^ (n + 2) = (-1) ^ n := by rw [pow_succ, pow_succ]; ring
    show 3 * J (n + 2) = 2 ^ (n + 4) - (-1) ^ (n + 2)
    rw [show J (n + 2) = J (n + 1) + 2 * J n from rfl, s2, p3,
      show 3 * (J (n + 1) + 2 * J n) = 3 * J (n + 1) + 2 * (3 * J n) from by ring,
      ih2, ih1, p2, s1]
    ring

/-- `J(4) = 21` — the Jacobsthal value that is a *forbidden* tournament `H` (`7·3`, THM-079): the path conflict
graph `P_4` realizes `H = 21` as a partition-function value, but no tournament's 3-cycle structure does. -/
theorem J_four : J 4 = 21 := by decide

end Math.Tournaments
