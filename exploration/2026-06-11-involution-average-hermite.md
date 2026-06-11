# THM-468 Hermite carrier

Source candidate: `candidates/THM-468-involution-average-hermite.md`
(`eliottcassidy2000/math` `01-canon/theorems/THM-468-involution-average-hermite.md`,
commit `c21c071`).

Formalization note:

- Mathlib already has the probabilists' Hermite polynomials and the explicit
  coefficient theorem
  `Polynomial.coeff_hermite_explicit`.
- The clean Lean carrier for THM-468 is therefore not a new Hermite development,
  but the sign cancellation:

  `(-1)^k * coeff (hermite n) (n - 2*k) =
    choose n (2*k) * (2*k - 1)!!`.

Mathematical implication:

The Hermite part of THM-468 separates into two independent layers.

1. A deterministic coefficient identity: after substituting `x -> i*x`, the
   Hermite signs cancel and the coefficient becomes the signless matching count
   for a `2k`-edge support.
2. A probabilistic/Pfaffian averaging identity: the expected squared Pfaffian of
   a principal `2k` minor is the number of perfect matchings on that support.

The first layer is now formalized in
`Math.Combinatorics.InvolutionAverage.hermite_signless_matching_coeff`.  The next
natural formalization target is the second layer as a finite-support random-sign
orthogonality lemma, independent of determinants:

`E[prod_{e in M} s_e * prod_{e in M'} s_e] = 1` iff `M = M'`, and `0` otherwise,
for independent fair signs indexed by unordered edges.  Once that is available,
the full Pfaffian average should reduce to expanding a square and applying
orthogonality.
