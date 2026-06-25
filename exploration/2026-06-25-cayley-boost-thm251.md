# THM-251 Cayley Boost Notes

Formalized candidate: `THM-251-cayley-boost-spectrum`

The Lean proof reduces the theorem to four rational identities.  The correct
formal domain is the punctured set of modes: `m != 0`, `k != 0`, and for the
mirror functional equation also `m - k != 0`.  This matches the informal
exclusion of `k = 0` and `k = m`; the former is a Cayley pole and the latter is
the zero boost.

The useful invariant is not the raw eigenvalue

```text
lambda_k = (m - 2k) / m
```

but its Cayley boost

```text
Q(lambda_k) = (m - k) / k.
```

The mirror involution `k |-> m-k` becomes exact inversion:

```text
Q(lambda_k) * Q(lambda_{m-k}) = 1.
```

This is the same algebraic shape as the formal-group `addr` map in
`Math/FormalGroup/NFoldSum.lean`, where the Cayley coordinate turns the
hyperbolic formal group into multiplication.  In tournament language, it is the
spectral analogue of complement/reversal symmetry: the sign flip on centered
eigenvalues becomes reciprocal inversion after Cayley transform.

No new informal theorem forwarded today: this is a clarification and connection
for an existing candidate rather than a new standalone result.
