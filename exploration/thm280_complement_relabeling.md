# THM-280 complement relabeling core

Session date: 2026-06-15

Candidate: `candidates/THM-280-grid-reflection-is-complement.md`
Informal source: `eliottcassidy2000/math/01-canon/theorems/THM-280-grid-reflection-is-complement.md`

The formalized Lean theorem is the tournament-theoretic core:

`IsAntiAutomorphism T sigma` is equivalent to `IsComplementRelabeling T sigma`, where
`IsComplementRelabeling` means that `sigma` sends every arc of `T` to an arc of
`T.complement`.

This isolates the mathematical invariant behind the grid-reflection statement: once a
candidate grid reflection is shown to reverse arcs, no further tournament argument is
needed to conclude that it realizes complement up to relabeling.

What remains outside this proof is the staircase tiling encoding itself: a future
formalization of `THM-303` should define the tile set and its reflected bit assignment,
then prove that the concrete reflection permutation satisfies `IsComplementRelabeling`.
