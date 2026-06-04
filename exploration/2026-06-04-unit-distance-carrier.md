# S627 unit-distance carrier reframing

Source: `eliottcassidy2000/math` commit `e5837f4`, HYP-2204 / `unit_distance_hgap_carrier_s627.out`.

Lean formalization added `Math.LonelyRunner.UnitDistanceCarrier`.

## Observation

The useful formal invariant is not the raw scalar edge count.  S627's examples are:

- `u(5) = 7 = 4 + 3`, split as unit spine plus tile/bulk.
- triangular/lattice `u(11) = 21 = 10 + 11`, split as unit spine plus lattice tile/bulk.

The forbidden tournament statements are multiplicative SCC-atom statements: under the atom
hypothesis, no product of tournament atoms equals `7` or `21`.  Lean makes the distinction
literal: `CarrierSplit.total = 7` is an additive statement in one type of data, while
`s.prod = 7` is a tournament-atom factorization statement.  A contradiction requires an
extra collapse map from carrier packets to tournament atoms.

## Next Mathematical Probe

A sharpened conjecture would classify when a carrier split admits such a collapse map.  The
expected obstruction is preservation of both operations:

- carrier data compose additively, by spine/tile/frontier decomposition;
- tournament SCC decomposition composes multiplicatively, by Hamiltonian-path factorization.

So a genuine collapse should be a semiring-like functor from a carrier category to the
tournament conflict-graph partition function.  The S627 examples fail because they only
preserve the visible scalar after forgetting carriers, not the additive/multiplicative
structure simultaneously.

This is not yet a new theorem for the informal repo; it is a candidate framing for future
formalization once the carrier category is defined.
