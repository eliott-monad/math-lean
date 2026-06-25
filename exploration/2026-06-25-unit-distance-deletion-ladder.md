# Unit-distance deletion ladder

Formalized target: `candidates/THM-461-unit-distance-deletion-ladder-and-floor.md`.
Informal provenance: `eliottcassidy2000/math`
`01-canon/theorems/THM-461-unit-distance-deletion-ladder-and-floor.md`
at commit `c21c071`.

The Lean proof shows that the deletion ladder is not intrinsically geometric.
For any finite simple graph `G` on `n` vertices,

```text
  sum_x |E(G induced on V \ {x})| = (n - 2) |E(G)|.
```

The proof factors through two Mathlib facts:

1. deleting one vertex removes exactly `degree x` edges, so the summand is
   `|E(G)| - degree x`;
2. the handshaking lemma gives `sum_x degree x = 2 |E(G)|`.

So every later unit-distance upper-bound ladder can be stated as a corollary of
this abstract graph identity plus a hypothesis bounding all one-vertex
deletions.  No metric, planarity, or unit-distance realization is needed for the
averaging step itself.

Possible next Lean corollary:

```text
  if every `(n - 1)`-vertex deletion has at most `M` edges, then
  (n - 2) * |E(G)| <= n * M.
```

The floor inequality `|E(G)| <= floor(n*M/(n-2))` is then pure natural-number
division, but it is better kept as a separate arithmetic lemma so the graph
double-counting theorem stays reusable.
