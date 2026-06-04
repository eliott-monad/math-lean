---
id: THM-225-universal-top-eigenvalue
source: 01-canon/theorems/THM-225-universal-top-eigenvalue.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-225
name: Top Eigenvalue of Tournament Constraint Gram Matrix
status: PARTIALLY-TRUE
verified_computationally: n=5 exhaustive, n=6-8 sampled (20000 each, 0 violations)
counterexample: n=9 (~0.1% of tournaments have top eigenvalue < 9)
proved_by: opus-2026-03-15-S72d
related: [THM-224, THM-222]
---

# THM-225: Top Eigenvalue of C_T^TC_T

## Statement (CORRECTED)

**For n ≤ 8:** For any tournament T with t₃ ≥ 1, max eigenvalue of C_T^TC_T = n.

**For n ≥ 9:** NOT universal. Some tournaments have max eigenvalue < n.
The condition for max eigenvalue = n is: rank(C_R) < (n-1)(n-2)/2.
When rank(C_R) = (n-1)(n-2)/2 (the cyclic boundaries span im(C^T)),
the top eigenvalue drops below n.

At n=9: ~0.1% of tournaments violate top eig = n. Top eigenvalue ≈ 8.84-8.94.

**Original (FALSE) claim:** "For any tournament T on n ≥ 3 vertices with t₃ ≥ 1,
the largest eigenvalue of C_T^TC_T is exactly n." This fails at n=9.

Here C_T is the constraint matrix restricted to the transitive triples of T.

## Spectral Duality

From THM-224 (C^TC = n·P):

**C_T^TC_T + C_R^TC_R = n·P**

where C_R is the constraint matrix restricted to cyclic triples.

This gives the **spectral pairing**: if the eigenvalues of C_T^TC_T on im(P)
are λ₁ ≥ λ₂ ≥ ... ≥ λ_r (where r = (n-1)(n-2)/2), then the eigenvalues
of C_R^TC_R on im(P) are n-λ_r ≥ n-λ_{r-1} ≥ ... ≥ n-λ₁.

## Notes for the formalizer

(none yet)
