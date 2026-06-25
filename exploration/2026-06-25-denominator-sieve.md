# THM-369 denominator sieve notes

Formalization target:
`candidates/THM-369-lrc-sieve-lean-formalization.md`, sourced from
`01-canon/theorems/THM-369-lrc-sieve-lean-formalization.md`.

The Lean proof made the invariant sharper than the surrounding prose: the whole
small-denominator sieve is the nonzero integer numerator

```text
v a - m q
```

at the reduced clock `a/q`.  No geometry is needed once the LRC condition is
encoded as "far from every integer"; the distance lower bound is just
`|v a - m q| / q >= 1/q`.

Useful consequence for later LRC(14) work: the obstruction at denominator `q`
is exactly the `q`-divisible fiber of the speed set.  The Hensel/p-adic language
in recent informal discussions should therefore be routed through divisibility
of this numerator rather than through a separate circle-metric API.  A natural
next formal target is the open/boundary split from THM-366:

```text
q < n  ->  1/n < |v a/q - m|
q = n  ->  1/n <= |v a/q - m|
```

under the same reduced-clock and no-`q`-divisible-speed hypotheses.
