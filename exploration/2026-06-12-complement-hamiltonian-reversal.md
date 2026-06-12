# Complement Hamiltonian Reversal

Candidate: `THM-203-complement-symmetry`
Source: `eliottcassidy2000/math/01-canon/theorems/THM-203-complement-symmetry.md`

Formalization observation: the proof is not just a cardinality argument.  The reversal map
is an involution on the finite set of all vertex orders and transports the adjacent-chain
predicate for `T` exactly to the adjacent-chain predicate for the converse tournament
`T.complement`.

Lean shape:

- `Tournament.complement` reverses the `beats` relation.
- `List.isChain_reverse` gives the core equivalences
  `p.reverse.IsChain T.complement.beats ↔ p.IsChain T.beats` and
  `p.reverse.IsChain T.beats ↔ p.IsChain T.complement.beats`.
- `hamiltonianPathCount` can be implemented as a filter of
  `(Finset.univ : Finset V).toList.permutations`.

Mathematical consequence worth reusing: any statistic on labeled tournaments that is pulled
back by arc reversal with sign `(-1)^d` and also factors through Hamiltonian path reversal
has vanishing odd complement-antisymmetric part.  This is the finite-combinatorial core of
the informal Walsh-level consequence, but the Lean proof isolates the needed invariant:
the relevant object is the involutive action on vertex orders, not the polynomial expansion.
