# 2026-06-23: F3 Type-II Bound and Farey Scout Notes

## Formalization target

Candidate: `THM-006-f3-min-typeii.md`

The informal proof says that a consecutively embedded odd cycle forces a signature
window with first bit `1` and last bit `0`, hence at least one Type-II position
(`1 -> 0` descent).  In Lean this is cleanest as a Boolean invariant about the
existing `Math.Tournaments.Inshat.descents` definition:

```lean
theorem exists_typeII_of_first_true_last_false (l : List Bool)
    (hlast : lastB (true :: l) = false) :
    0 < descents (true :: l)
```

The proof is not a separate pigeonhole argument.  It is an immediate specialization
of the THM-004 telescope

```lean
descents s + last(s) = ascents s + first(s)
```

to `first = 1`, `last = 0`.  Thus F3 is a corollary of the same signed boundary
accounting that proves the `inshat` identity.  The sharpness example is formalized
as:

```lean
theorem descents_replicate_true_append_false (n : Nat) :
    descents (List.replicate (n + 1) true ++ [false]) = 1
```

This records the monotone pattern `1, ..., 1, 0` as the unique-minimum shape at the
Boolean-signature level; uniqueness of the shape itself was not claimed in Lean.

## Mathematical connection

The proof exposes a useful invariant: any future per-cycle or per-path identity that
only needs the existence of a Type-II position should try to reduce to the THM-004
telescope, rather than reason directly about embedded cycles.  The cycle geometry
is only needed to manufacture the endpoint conditions.

## Just-arrived Farey scout context

The S130/S131 Farey scout files in the informal repo are result ledgers rather than
candidate markdown files.  They suggest a separate arithmetic formalization path:

- On the LRC14 unit-excess chain `e = 14p - q = 1`, the denominator is
  `q = 14p - 1`.
- The sum payload is then `p + q = 15p - 1`, so it is order-equivalent to `q` on
  this chain.
- The product payload is `p q = p(14p - 1)`, still monotone on positive `p`, but
  S130 shows it introduces global row-bank inversions away from the chain.

This is not yet a new theorem worth forwarding to the informal repo: it is already
implicit in the S130/S131 readouts.  It does suggest that a future formal candidate
could isolate the unit-excess chain arithmetic before tackling the row-bank
ordering statements.
