# Staircase 3-cycle count: interval-reversal viewpoint

Formalization target:
`candidates/THM-399-allzero-staircase-c3-formula.md`, sourced from
`eliottcassidy2000/math/01-canon/theorems/THM-399-allzero-staircase-c3-formula.md`.

Lean model:
`Math/Tournaments/Staircase.lean` represents the all-0 interleaved staircase on `2k`
vertices as two copies of `Fin k`: `domV p` and `recV p`.  The only non-transitive arcs
relative to the rank order

```text
domV 0 < domV 1 < ... < domV (k-1) < recV 0 < ... < recV (k-1)
```

are the within-pair reversals `recV p -> domV p`.

The directed 3-cycles split into two explicit families for each pair `p < q`:

```text
recV p -> domV p -> domV q -> recV p
domV q -> recV p -> recV q -> domV q
```

This gives `2 * choose k 2 = k * (k - 1)`.

## Generalization suggested by the proof

The cleaner invariant is not specific to the interleaved staircase.  Start with a transitive
tournament on a linearly ordered finite vertex set, then reverse a matching `M` of arcs
`a_i < b_i`.  If no two reversed arcs share endpoints, every directed triangle should contain
exactly one reversed arc.  More precisely, a reversed arc `(a,b)` and a vertex `x` with
`a < x < b` form the directed triangle

```text
b -> a -> x -> b.
```

Therefore the total 3-cycle count should be

```text
sum_{(a,b) in M} #{x | a < x < b}
```

provided the reversed matching has no extra interactions that create a triangle with three
reversed edges.  In the all-0 staircase, the interval from `domV p` to `recV p` contains
`(k - 1 - p)` later dominants and `p` earlier recessives, hence exactly `k - 1` interior
vertices per reversed pair.  Summing over `p = 0,...,k-1` recovers `k(k-1)`.

This interval-reversal formulation is a plausible reusable bridge between staircase
Hamiltonian-path computations and local cycle-count identities.  It would also give a compact
way to compare other staircase fillings by tracking how their reversed arcs' intervals overlap.
