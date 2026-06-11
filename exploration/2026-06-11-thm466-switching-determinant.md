# THM-466 switching determinant carrier

Source candidate: `candidates/THM-466-tournament-determinant-hadamard.md`
(`eliottcassidy2000/math` `01-canon/theorems/THM-466-tournament-determinant-hadamard.md`,
commit `c21c071`).

Formalized carrier:

- `Math.Tournaments.det_one_add_conj_of_mul_self_eq_one`

The Lean theorem proves the algebra behind switching invariance:

```text
D^2 = I  ==>  det(I + D S D) = det(I + S)
```

This is slightly more general than diagonal sign switching.  The proof uses only
`D (I+S) D = I + D S D` and `det(D)^2 = det(D^2) = 1`; it does not require `S` to
be skew.  Thus the switching-invariance part of THM-466 is really an involutory
conjugation invariant for the `I + S` determinant.

Mathematical note:

- Reversal invariance should be the transpose argument:
  if `S^T = -S`, then `det(I-S) = det((I+S)^T) = det(I+S)`.
- Isomorphism invariance is the same conjugation argument with a permutation matrix,
  but there `P P^T = I` rather than `P^2 = I`; the natural next carrier is
  `det(P (I+S) P^T) = det(I+S)`.
- The floor statement in THM-466 still needs a Pfaffian-principal-minor expansion
  for `det(I+S)`.  The Lean proof here suggests separating the theorem into:
  invariance under signed orthogonal conjugation, reversal by transpose, and then
  the genuinely Pfaffian local-order characterization.
