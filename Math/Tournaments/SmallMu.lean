/-
# Small-n support bound for the `mu(C)=1` theorem

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-008-mu-trivial-small-n.md`.

THM-008 says that for `n ≤ 5`, the `mu` factor attached to a directed
3-cycle is trivial.  The combinatorial reason is that, after deleting the
three vertices of the triangle, fewer than three vertices remain, so no
vertex-disjoint odd directed cycle can be supported there.
-/
import Mathlib

namespace Math.Tournaments

open Finset

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- **THM-008 support core.**  In a tournament on at most five vertices, once the
three distinct vertices of a directed triangle have been removed, at most two
vertices remain.  Thus the restricted conflict graph used in the informal
definition of `mu(C)` has no possible 3-cycle support. -/
theorem remaining_vertices_after_triangle_le_two {v a b : V}
    (hcard : Fintype.card V ≤ 5) (hva : v ≠ a) (hvb : v ≠ b) (hab : a ≠ b) :
    ((univ : Finset V) \ ({v, a, b} : Finset V)).card ≤ 2 := by
  have htri : ({v, a, b} : Finset V).card = 3 := by
    simp [hva, hvb, hab]
  have hsdiff :
      ((univ : Finset V) \ ({v, a, b} : Finset V)).card =
        Fintype.card V - 3 := by
    rw [card_sdiff, card_univ]
    simp [htri]
  rw [hsdiff]
  omega

/-- A restatement of the THM-008 support core in the strict form used in the
informal proof: after the triangle is removed, fewer than three vertices remain. -/
theorem remaining_vertices_after_triangle_lt_three {v a b : V}
    (hcard : Fintype.card V ≤ 5) (hva : v ≠ a) (hvb : v ≠ b) (hab : a ≠ b) :
    ((univ : Finset V) \ ({v, a, b} : Finset V)).card < 3 := by
  have hle := remaining_vertices_after_triangle_le_two (V := V) hcard hva hvb hab
  omega

end Math.Tournaments
