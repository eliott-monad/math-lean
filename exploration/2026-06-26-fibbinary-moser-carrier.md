# HYP-3063 fibbinary/Moser carrier formalization notes

Source: `eliottcassidy2000/math`
`05-knowledge/hypotheses/HYP-3063-moser-fibbinary-partial-cube-simplex-geometry-carrier.md`,
with exact scout output
`05-knowledge/results/lrc14_fibbinary_moser_partial_cube_codex_s228.out`.

Formalized carrier:

- `orderedSimplexSectors k = 2 * choose k 2`, so the row
  `2,6,12,20,30,42` is explicitly an ordered-simplex edge-sector row.
- `M_m` is represented as the powerset of even bit positions
  `{0,2,...,2m-2}`.  Lean proves `|M_m| = 2^m` and layer sizes
  `choose m r`.
- Every `M_m` support embeds into the fibbinary support of length `2m-1`.
- Fibbinary supports are closed under one-bit shift (`x -> 2x`), while Moser
  supports are closed under two-bit shift (`x -> 4x`); `{1}` gives the smallest
  formal counterexample to treating Moser as closed under one-bit shift.

Mathematical implication:

The clean invariant is not a sequence value but a pair

```text
(support family, native transition)
```

plus layer origin.  The scalar collisions in the scout (`20` and `12`) are
therefore harmless exactly when the sidecar records whether a value came from
ordered simplex sectors, Fibonacci-cube edges, or an even-coordinate Moser
cube.  This suggests a reusable carrier interface for future LRC packet work:
a quotient may forget coordinates only after proving that route/status fields
are constant on each fiber of the forgetting map.

No new informal theorem was forwarded: this note records the formal shadow of
HYP-3063 rather than a new result beyond the just-arrived hypothesis.
