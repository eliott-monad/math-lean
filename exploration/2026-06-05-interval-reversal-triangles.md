# Interval reversal triangle count

Source candidate: `01-canon/theorems/THM-410-interval-reversal-triangle-count.md`
at informal commit `65038cb`.

Lean formalization file: `Math/Tournaments/IntervalReversal.lean`.

## Formalization notes

The clean formal model separates three objects:

- `intervalReversalBeats M`: the transitive tournament arc relation after reversing the
  lower-to-upper pairs in `M`.
- `IsOrderedMatching M`: the real hypothesis used by the theorem.  It has two parts:
  every listed pair is ordered, and any two listed pairs sharing a vertex are equal.
- `IsDirectedThreeCycle T x y z`: cyclicity of the displayed support, allowing either
  cyclic orientation.

For `x < y < z`, the six arc tests reduce to three membership bits:

- `x -> y` iff `(x,y) ∉ M`;
- `y -> z` iff `(y,z) ∉ M`;
- `z -> x` iff `(x,z) ∈ M`;
- the opposite orientation would require both `(x,y) ∈ M` and `(y,z) ∈ M`.

The matching hypothesis kills the adjacent-pair case.  It also shows that if `(x,z) ∈ M`,
then neither adjacent pair is in `M`, so the long reversal gives the unique cycle
orientation `x -> y -> z -> x`.

The count proof is the direct bijection

```text
(x,y,z)  <->  ((x,z), y)
```

between increasing directed 3-cycle supports and interval witnesses consisting of a
reversed pair plus an intermediate vertex.

## Mathematical follow-up

The Lean case split exposes a sharper unrestricted formula for any set of reversed arcs,
without the matching condition:

```text
cyclic(x,y,z) iff
  ((x,y) notin M and (y,z) notin M and (x,z) in M)
  or
  ((x,y) in M and (y,z) in M and (x,z) notin M).
```

Equivalently, on an increasing triple, cyclicity is the Boolean condition

```text
r_xz = 1 + r_xy + r_yz mod 2
```

together with the orientation-specific split above.  THM-410 is the matching specialization
where at most one of the three reversal bits can be nonzero, so the criterion collapses to
`r_xz = 1`.

This unrestricted form may be useful for square blowup or interval-union variants: it
turns triangle counts into a local three-bit statistic rather than a matching-specific
argument.  I did not forward this as a new informal theorem yet because it is a natural
generalization exposed by the proof, but it has not been checked against the current
informal layout for whether it duplicates THM-399 or nearby interval-reversal lemmas.
