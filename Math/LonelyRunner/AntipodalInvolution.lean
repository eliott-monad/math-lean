/-
# Lonely Runner — antipodal partners are exactly 2-torsion fixed points

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-430-the-antipodal-involution-unifies-shell-partner-and-torsion-leak.md`.

The informal theorem identifies shell-partner pairs with the antipodal involution
`σ x = -x`, and identifies self-partners with the half-turn/2-torsion locus.  The
formal core is independent of the analytic LRC apparatus: it is a theorem of any
additive group, hence applies uniformly to all cyclic clock, shell, and CRT fibers.
-/
import Mathlib

namespace Math.LonelyRunner

/-- **Shell partners are antipodal orbits.**  The condition `a + b = 0`
is exactly the statement that `b` is the antipodal partner `-a`. -/
theorem shell_partner_iff_antipodal {G : Type*} [AddGroup G] (a b : G) :
    a + b = 0 ↔ b = -a := by
  constructor
  · intro h
    exact eq_neg_of_add_eq_zero_right h
  · intro h
    simp [h]

/-- **Self-partners are exactly 2-torsion.**  A point is fixed by the
antipodal involution iff its double is zero.  In `ZMod q`, this is the
formal half-turn locus from THM-430. -/
theorem self_partner_iff_two_torsion {G : Type*} [AddGroup G] (a : G) :
    a = -a ↔ (2 : Nat) • a = 0 := by
  constructor
  · intro h
    rw [two_nsmul]
    exact (shell_partner_iff_antipodal a a).2 h
  · intro h
    rw [two_nsmul] at h
    exact (shell_partner_iff_antipodal a a).1 h

/-- The antipodal map is an involution. -/
theorem antipodal_involution {G : Type*} [AddGroup G] (a : G) : -(-a) = a := by
  simp

end Math.LonelyRunner
