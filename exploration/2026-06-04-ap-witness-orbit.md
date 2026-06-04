# AP Witness Orbit And Doubling

Source candidate: `candidates/THM-403-cyclotomic-witness-orbit-of-the-AP.md`
Informal provenance: `eliottcassidy2000/math` `01-canon/theorems/THM-403-cyclotomic-witness-orbit-of-the-AP.md`

Lean formalization added:

- `Math.LonelyRunner.APWitness`
- `Math.LonelyRunner.apWitness_iff_coprime`
- `Math.LonelyRunner.APWitnesses`
- `Math.LonelyRunner.apWitnesses_card`

Mathematical note:

Formalizing THM-403 against the existing `danger_count` theorem makes the core statement sharper:
the AP witness orbit is exactly the zero-danger locus for the AP block.  The proof does not need
clock metric estimates once the origin obstruction is isolated:

```text
APWitness n j
iff no v in {1,...,n-1} has n | v*j
iff the danger-count filter has cardinal 0
iff gcd(n,j)-1 = 0
iff gcd(j,n)=1.
```

This packages the cyclotomic language as a finite arithmetic orbit: the number of witnesses is
`Nat.totient n`, matching `(ZMod n)^*`.

Connection to THM-404:

The same formal statement almost proves the doubling dichotomy.  Since witnesses are exactly
coprime residue classes, doubling preserves the witness set exactly when `2` is coprime to `n`.
Thus odd `n` gives an endomap of the witness orbit, while even `n` sends every witness out of the
witness orbit.  This is not a new result beyond THM-404, but it identifies the Lean dependency:
THM-404 should be a short corollary of `apWitness_iff_coprime` plus `Nat.coprime_two_left`.

I do not think this needs forwarding as a new informal theorem; it is a proof simplification and a
dependency clarification for the already-present THM-404 candidate.
