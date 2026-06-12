# Forward-edge reversal symmetry

Source candidate: `candidates/THM-091-fwd-symmetry.md`

The Lean proof exposed a useful invariant slightly cleaner than the permutation-distribution
wording:

> For any simple listed traversal `p` in a tournament, every adjacent slot contributes
> exactly one to `forward(p) + backward(p)`.

This is local: it only uses tournament totality/asymmetry on each adjacent pair, plus
nodupness to know the pair is off-diagonal.  The global distribution symmetry is then a
separate reindexing step: reverse the list, identify `backward(p)` with
`forward(p.reverse)`, and use reversal as an involution on Hamiltonian orderings.

This suggests a reusable pattern for later transfer-matrix formalizations: split proofs
into an orientation-complement invariant on adjacent slots and a purely combinatorial
involution/reindexing lemma on the indexing family.  The same split should apply to
THM-051 reversal identities and to signed forward-edge polynomial palindromicity.
