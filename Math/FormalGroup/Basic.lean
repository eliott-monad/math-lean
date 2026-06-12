/-
# The formal group F(x,y) = (x + y) / (1 + x y)

Provenance: `eliottcassidy2000/math` — the formal group law F(x,y)=(x+y)/(1+xy)
arising in the tournament / Hamiltonian-path generating-function work (this is the
relativistic velocity-addition law; it is the additive formal group pushed through tanh).
The oddness and inverse identities below formalize the formal-group part of
`01-canon/theorems/LEM-004-tournaments-are-odd-functions.md` (commit `3c3a18e`).

We model it concretely on `ℝ` (where division is total: `r / 0 = 0`). The deep facts
(formal-group axioms as power-series identities) are formalized incrementally; this file
fixes the function and the identity element so downstream work has a stable handle.
-/
import Mathlib

namespace Math.FormalGroup

/-- The formal group law `F(x,y) = (x + y) / (1 + x*y)` on `ℝ`. -/
noncomputable def F (x y : ℝ) : ℝ := (x + y) / (1 + x * y)

/-- `0` is a left identity: `F 0 y = y`. -/
@[simp] theorem F_zero_left (y : ℝ) : F 0 y = y := by
  simp [F]

/-- `0` is a right identity: `F x 0 = x`. -/
@[simp] theorem F_zero_right (x : ℝ) : F x 0 = x := by
  simp [F]

/-- `F` is symmetric (commutative): `F x y = F y x`. -/
theorem F_comm (x y : ℝ) : F x y = F y x := by
  unfold F
  rw [add_comm x y, mul_comm x y]

/-- The formal inverse is negation: `F x (-x) = 0`. -/
@[simp] theorem F_neg_self (x : ℝ) : F x (-x) = 0 := by
  simp [F]

/-- The formal inverse is also a left inverse: `F (-x) x = 0`. -/
@[simp] theorem F_neg_self_left (x : ℝ) : F (-x) x = 0 := by
  simp [F]

/-- Global sign flip is compatible with `F`: the law is odd. -/
theorem F_neg_neg (x y : ℝ) : F (-x) (-y) = -F x y := by
  unfold F
  ring_nf

/-- Complementing the left coordinate is the same as subtracting inside the numerator. -/
theorem F_neg_left (x y : ℝ) : F (-x) y = (y - x) / (1 - x * y) := by
  unfold F
  ring_nf

/-- Complementing the right coordinate is the symmetric subtraction identity. -/
theorem F_neg_right (x y : ℝ) : F x (-y) = (x - y) / (1 - x * y) := by
  unfold F
  ring_nf

end Math.FormalGroup
