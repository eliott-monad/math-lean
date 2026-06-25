/-
# Unit-distance deletion ladder: the elementary graph-counting core

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-461-unit-distance-deletion-ladder-and-floor.md`
(math repo commit `c21c071`).  The geometric unit-distance theorem uses only this
finite-graph averaging identity: summing the edge counts of all one-vertex
deletions counts every edge once for each vertex not incident to it, i.e. `n - 2`
times.
-/

import Mathlib.Combinatorics.SimpleGraph.DeleteEdges
import Mathlib.Combinatorics.SimpleGraph.DegreeSum

namespace Math.UnitDistance

open Finset

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- **THM-461(A), deletion ladder core.**  For any finite simple graph `G`, the
sum of edge counts over all induced one-vertex deletions is `(n - 2) * |E(G)|`.

For a unit-distance graph this is the identity
`Σ_v u(G - v) = (n - 2) u(G)`, the elementary averaging step behind the
unit-distance upper-bound ladder. -/
theorem deletion_ladder_edge_sum (G : SimpleGraph V) [DecidableRel G.Adj] :
    (∑ x : V, #((G.induce ({x}ᶜ : Set V)).edgeFinset)) =
      (Fintype.card V - 2) * #G.edgeFinset := by
  classical
  calc
    (∑ x : V, #((G.induce ({x}ᶜ : Set V)).edgeFinset))
        = ∑ x : V, #((G.deleteIncidenceSet x).edgeFinset) := by
          simp [SimpleGraph.card_edgeFinset_induce_compl_singleton]
    _ = ∑ x : V, (#G.edgeFinset - G.degree x) := by
          simp [SimpleGraph.card_edgeFinset_deleteIncidenceSet]
    _ = (∑ x : V, #G.edgeFinset) - ∑ x : V, G.degree x := by
          rw [Finset.sum_tsub_distrib]
          intro x hx
          exact G.degree_le_card_edgeFinset x
    _ = Fintype.card V * #G.edgeFinset - 2 * #G.edgeFinset := by
          rw [G.sum_degrees_eq_twice_card_edges]
          simp
    _ = (Fintype.card V - 2) * #G.edgeFinset := by
          rw [Nat.sub_mul]

end Math.UnitDistance
