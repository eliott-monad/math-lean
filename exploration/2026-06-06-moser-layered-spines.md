# 2026-06-06 - Moser layered spine gluing

Formalization target: `THM-408-moser-layered-slabs-have-unit-spines`.

The Lean proof separates the S628 certificate into three small invariants:

- each layer word is a fixed Gray-code path in a rank-4 integer fiber;
- adjacent fibers glue by the single bridge vector `(-1,1,0,0)`;
- caps are prefixes of the same layer word, so no new step alphabet is needed at the boundary.

This suggests a reusable slab-gluing lemma: if a finite family of pairwise-disjoint traceable
blocks has endpoint-compatible unit bridges, then their concatenation is a Hamiltonian unit
spine.  THM-408 is the special case where the blocks are indexed by first coordinate and
disjointness is witnessed by that coordinate alone.

Potential next formal target: define a generic `TraceableBlock` carrying a vertex list, a
unit-edge relation, and endpoints.  Then prove a concatenation theorem parameterized by a
strictly monotone block key.  This would make the plus/minus Moser slabs instances rather than
two parallel explicit proofs, and it should also cover the "ear/slab gluing" abstraction named
in the informal THM-408 abstract reading.

No genuinely new mathematical result was isolated here; the useful output is a reusable
formalization pattern and a precise candidate for a later abstraction.
