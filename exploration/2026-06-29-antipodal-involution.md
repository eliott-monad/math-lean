# THM-430 formalization note: antipodal partners

Formalized target: `candidates/THM-430-the-antipodal-involution-unifies-shell-partner-and-torsion-leak.md`.

The Lean proof isolates the algebraic core of the informal statement:

- `a + b = 0` iff `b = -a`, so shell-partners are just two-point orbits of the
  antipodal map.
- `a = -a` iff `2 • a = 0`, so self-partners are precisely the 2-torsion fixed
  points.

This was stated in the candidate for cyclic clocks and shells, but Lean shows the
right invariant lives in any additive group.  For `ZMod q`, all later arithmetic
specializations are now reduced to describing the 2-torsion subgroup of the
particular cyclic fiber.  No new research result is being forwarded: this is a
clean generalization of the candidate's algebraic core, not a separate theorem
outside its scope.
