# THM-150 Fibonacci Product Notes

Formalization target: `candidates/THM-150-product-identity.md`

Lean artifact: `Math/NumberTheory/FibonacciProduct.lean`

## Observation

The product identity's arithmetic close is independent of the interval tournament once
the elementary symmetric coefficients have been identified.  The whole closing step is:

```text
sum_{j=0}^m binom(m+j, 2j) = F_{2m+1}.
```

Mathlib already has the antidiagonal Fibonacci identity

```text
F_{n+1} = sum_{a+b=n} binom(a,b).
```

At `n = 2m`, the lower half `a < m` vanishes because `binom(a, 2m-a) = 0`.
The upper half is reindexed as `a = m+j`, and binomial symmetry gives
`binom(m+j, m-j) = binom(m+j, 2j)`.

## Mathematical consequence

This shows the Morgan-Voyce coefficient sum is not a separate Fibonacci phenomenon:
it is exactly the surviving upper half of the standard antidiagonal model for
Fibonacci numbers.

For future Fibonacci/Farey bridge candidates, this suggests looking for a statistic
whose generating function naturally selects the nonzero half of an antidiagonal
binomial expansion.  If the Farey bridge introduces coefficients of the shape
`binom(m+j, 2j)` or `binom(m+j, m-j)`, the fastest formal route is probably to
reduce it to `Nat.fib_succ_eq_sum_choose` by this same half-antidiagonal argument.

## Possible generalization

The proof should extend to any semiring-valued coefficient transform where the
lower-half terms are annihilated by a support condition and the upper-half terms
are carried by binomial symmetry.  A reusable lemma could be stated as:

```text
sum_{k=0}^{2m} binom(k, 2m-k)
  = sum_{j=0}^m binom(m+j, 2j).
```

Then THM-150 is just this lemma composed with Mathlib's Fibonacci antidiagonal
formula.
