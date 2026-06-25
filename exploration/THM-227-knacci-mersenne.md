# THM-227 k-nacci Mersenne exploration

Candidate: `candidates/THM-227-knacci-mersenne.md`
Informal source: `eliottcassidy2000/math` `01-canon/theorems/THM-227-knacci-mersenne.md`

Lean formalization completed the matrix-free Newton-range core:

```text
t 0 = 0
t n = (sum m < n, t m) + n  for 1 <= n <= k
------------------------------------------------
t n = 2^n - 1               for n <= k
```

This isolates the real invariant in the informal proof: the Mersenne formula is not
specific to matrices once Newton's identities have produced the recurrence.  Any
trace-like sequence with the same initial Newton range has the same values, so the
formal matrix work can be reduced to a single lemma showing that the companion
matrix trace sequence satisfies the recurrence.

No new informal theorem was forwarded.  The useful follow-up is a formal bridge
from the k-nacci companion matrix characteristic polynomial to the recurrence used
by `Math.NumberTheory.newtonRange_mersenne`.
