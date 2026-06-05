# S656 CH carrier atlas formalization notes

Source: `eliottcassidy2000/math` commit `750edd9`, HYP-2232 /
`05-knowledge/results/continuum_hypothesis_carrier_s656.out`.

Lean file: `Math/SetTheory/ContinuumHypothesisCarrier.lean`.

## What survived formalization

The S656 statement is not a new set-theory theorem; it is a carrier/quotient
methodology note using CH as the canonical warning example.  The formalizable
core is therefore finite:

- the powerset-shadow table for `n = 0,...,9`;
- the proof-route score tuples;
- the route tournament win sequence and histogram;
- absence of directed 3-cycles;
- the explicit Hamiltonian route chain.

The route tournament became cleaner in Lean as a rank certificate:

```text
forcing/generic channel  >  inner model section  >  absoluteness audit
> equinumerosity/fiber bridge  >  LRC sufficient statistic
> ordinal boundary transfer  >  raw cardinal numerology.
```

The rank theorem is stronger than the printed fingerprint.  Once route edges are
exactly rank comparison, acyclicity and the unique Hamiltonian route order are
not separate phenomena; they are consequences of having found the retained
side-channel order.

## Mathematical takeaway

The finite powerset rows should not be used as a CH analogy in the literal
sense.  Finite `2^n` overshoots are ordinary arithmetic gaps.  The useful
invariant is the shape of the question:

```text
scalar shadow + forgotten carrier = unstable predicate
```

This suggests a practical "absoluteness audit" for the finite projects already
in the repo.  Given a scalar such as `H`, a residue row, a wall value, or a
unit-distance count, add controlled side channels and ask whether the target
predicate changes.  If it changes, the scalar is not complete.  If it does not
change across a sufficiently rich family of lifts, the next target is a
conservativity theorem for that lift.

## Candidate extensions

1. Formalize a small generic lemma in `Math/` once a concrete scalar/carrier API
   exists: if a predicate factors through a projection, then all objects in a
   fiber share the predicate.  This is the finite analogue of "absoluteness under
   the proposed quotient."
2. For the existing unit-distance carrier file, add a common `CarrierSplit`
   interface that can also host residue/carry and tournament packet examples.
3. For tournament `H`, search for a pair of explicit finite examples with the
   same scalar but different packet data.  That would be a genuine scalar-twin
   certificate and would deserve forwarding to the informal repo.

No genuinely new theorem about CH or the tournament program was proved here, so
there is nothing to forward to the informal repo this session.
