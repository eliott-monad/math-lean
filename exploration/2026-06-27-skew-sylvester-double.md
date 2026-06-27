# Skew-Sylvester doubling notes

Context: `candidates/THM-447-skew-sylvester-doubling.md`, sourced from
`01-canon/theorems/THM-447-skew-sylvester-doubling.md`.

The formalized carrier is claim (1): the block rule

```text
M' = [ M     M+I ]
     [ M-I   -M  ]
```

is again a valid tournament dominance sign matrix.  The Lean proof factors the
claim through the primitive invariant

```text
σ a a = 0,   σ b a = -σ a b,   σ a b ∈ {1,-1} off diagonal.
```

This is slightly more general than the informal statement: no finite vertex set,
matrix determinant, or Hamiltonian-path data is needed for validity.  The
construction is an endofunctor on odd sign matrices, and `tournamentOfSkewSign`
then repackages the result as a tournament.

Mathematical follow-up:

- The same factorization should simplify the skew-Hadamard preservation claim:
  prove the block identities for an abstract skew-type matrix `S = M + I`, then
  specialize to tournament signs.
- The doubled lower copy is forced to be the opposite orientation by skewness.
  The only genuinely new orientation choices are the twin arcs; choosing the
  opposite twin convention should give the anti-isomorphic double.
- The session prompt mentioned a just-arrived `branch-kernel orientation audit`
  from commit `7821e7cd`, but `./sync-candidates.sh` reported zero new
  candidates from `math@7a12a72`.  I did not find an `S250`, `branch-kernel`, or
  `orientation audit` candidate locally.
