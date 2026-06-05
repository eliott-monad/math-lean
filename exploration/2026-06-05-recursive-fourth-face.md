# S672 recursive fourth face formalization notes

Source: `eliottcassidy2000/math` commit `53e7178`, S672:
`05-knowledge/results/recursive_fourth_face_coloring_s672.out` and
`07-reflections/recursive-fourth-face-coloring-s672.md`.

## Formalized shadow

`Math.Foundations.RecursiveFourthFace` formalizes the finite carrier theorem:

```text
recursion > fraction > product > sum > raw_scalar
```

as a strict score tournament on five representation faces.  The Lean module
proves:

- the scores are exactly `0,1,2,3,4`;
- scores separate the five faces;
- the tournament is total on distinct faces;
- there are no directed 3-cycles;
- the displayed top order lists all faces without repetition;
- the sharpened grammar is `sum -> product -> fraction -> recursion -> sum`.

This captures the part of S672 that is genuinely structural rather than
domain-specific computation.

## Mathematical reading

The useful separation is:

```text
fraction  = retained boundary/address state
recursion = transition law for that state under extension
```

This clarifies older carrier notes in this repo.  The unit-distance spine/bulk
split and the LRC carry-owner split are not final invariants by themselves.
They are boundary states.  A uniform theorem needs an extension law: which
children preserve the state, which children pay a tax, and which quotients leak
the owner data.

The acyclic face tournament is a useful guardrail.  If a proposed proof route
keeps only a raw scalar or a static product ledger, it is strictly below the
boundary-state route; if it also proves a stable extension/descent rule, it
reaches the recursive face.

## Next Lean target

S672 also reports the baby Paris-Harrington pair-coloring counts

```text
N = 3,4,5,6 -> 6,18,12,0
```

for two-colorings of complete graphs with no monochromatic triangle.  A first
attempt using `Finset.univ` over function colorings evaluated the counts, but
the generic route either introduced noncomputable `toList` enumeration or made
`decide` re-enumerate a large finite function space in the kernel.

The right formalization should use a compact bit-vector encoding of edge
colorings:

```text
edge_index : {i,j // i < j < N} -> Fin (N.choose 2)
coloring   : Fin (N.choose 2) -> Bool
```

Then the counts through `N=6` should be proved by small executable reductions.
That would formalize the finite Ramsey/Paris-Harrington miniature without
leaning on noncomputable `Finset` machinery.
