# Self-Converse Perspective Flip

Candidate: `THM-409-self-converse-perspective-flip-involution`

Formalizing the coset statement isolates a useful quotient-level corollary:
if `sigma` is any anti-automorphism of a tournament `T`, then the induced map
on the quotient of vertices by `Aut(T)`-orbits is not only independent of
`sigma`; it is an involution.  The proof is short: `sigma^2` is an
automorphism, so `[sigma (sigma v)] = [v]` in the rooted-perspective quotient.

This is implicit in the informal title, but Lean forced it to be stated as a
separate theorem:

```lean
theorem antiPerspectiveMap_involutive {sigma : Equiv.Perm V}
    (hSigma : IsAntiAutomorphism T sigma) :
    Function.Involutive (antiPerspectiveMap T sigma hSigma)
```

The same formal API also gives the conjugation invariant:
`sigma * alpha * sigma⁻¹` is an automorphism whenever `sigma` is anti and
`alpha` is an automorphism.  This is the exact well-definedness mechanism for
the root quotient map.
