# Hamiltonian path automorphism freeness

Candidate: `candidates/LEM-003-aut-acts-freely-on-ham-paths.md`.

Lean module: `Math/Tournaments/HamiltonianPathAutomorphism.lean`.

What formalization exposed:

- The existing `hamiltonianPathCount` representation is an ordered vertex list, not an
  arc-set quotient.  In this representation the freeness core is purely list-theoretic:
  if a permutation fixes a nodup spanning list under `List.map`, then it fixes every
  vertex.
- The tournament structure only enters to show that automorphisms preserve the directed
  chain predicate under relabeling.
- The informal arc-set statement is equivalent, but it needs one extra reconstruction
  layer: prove that the adjacent arc set of a nodup spanning directed path determines
  the vertex order.  The proof should identify the unique source in the path subgraph
  and then follow the unique outgoing edge.

No new research result was forwarded.  The main mathematical clarification is that the
divisibility result for `hamiltonianPathCount` can be built from the ordered-list
freeness theorem directly, while the arc-set version is best treated as a separate
representation-equivalence lemma.
