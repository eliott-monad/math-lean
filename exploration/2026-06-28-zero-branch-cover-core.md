# Zero-Branch Cover Core

Formalizing THM-390 made the "branch-cover certificate" algebraically smaller than the
informal phrasing suggests.  The core invariant is just the finite count

```text
z_q(V) = #{v in V : q divides v}.
```

The denominator sieve already proved the geometric part: if `z_q(V)=0`, then the reduced
clock `1/q` keeps every active speed at rational distance at least `1/q` from every integer.
For `q < n`, this is a strict open witness at threshold `1/n`; for `q = n`, it is the closed
wall witness.

The cover statement is therefore the contrapositive of a count lemma, not a new interval
argument: no zero-branch witness on a node range forces every node in that range to have
positive branch mass.  This separates the arithmetic obstruction from the later endpoint
geometry.

Useful follow-up:

- The same proof works for every reduced numerator `a/q`, not only `1/q`.  A stronger cover
  core could index denominator nodes by primitive clocks and record that the numerator adds
  no new obstruction once `gcd(a,q)=1`.
- The branch-cover condition is monotone in speed-set inclusion: adding speeds can only
  increase `z_q`.  This should combine cleanly with owner-congruence residual filters, where
  the hard work begins only after all small denominator nodes are covered.
- The open/compact distinction is purely the strict inequality `q < n` versus `q = n`; the
  Lean proof exposes that no separate endpoint interval lemma is needed for THM-390.
