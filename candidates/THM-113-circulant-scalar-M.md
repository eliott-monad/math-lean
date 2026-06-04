---
id: THM-113-circulant-scalar-M
source: 01-canon/theorems/THM-113-circulant-scalar-M.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-113: Scalar Transfer Matrix for Circulant Tournaments at Odd n

**Status:** PROVED (algebraic proof + exhaustive/DP verification n=5,7,9,11,13)
**Added:** kind-pasteur-2026-03-06-S25d
**Depends on:** THM-050 (consecutive-position formula), THM-030 (M symmetry)

## Statement

**Theorem.** For any circulant tournament T on Z/nZ at odd n, the transfer matrix M satisfies:

    M = (H/n) * I

where H = H(T) is the number of Hamiltonian paths and I is the identity matrix.

## Proof

Let T be a circulant tournament on Z/nZ with generator set S (i.e., T[i,j] = 1 iff j-i mod n is in S). Since |S| = (n-1)/2, T is a regular tournament.

**Step 1: Reduction to palindromic N.**

By THM-050, for a != b: M[a,b] = sum_{j=0}^{n-2} (-1)^j N(a,b,j), where N(a,b,j) = #{Ham paths with {a,b} at consecutive positions {j,j+1}}.

If N(a,b,j) = N(a,b,n-2-j) for all j (palindromic), then the alternating sum vanishes at odd n:

    sum_j (-1)^j N(a,b,j) = sum_k (-1)^{n-2-k} N(a,b,k)
                           = (-1)^n sum_k (-1)^k N(a,b,k)
                           = -sum_j (-1)^j N(a,b,j)    [at odd n]

So sum_j (-1)^j N(a,b,j) = 0, hence M[a,b] = 0 for all a != b.

For the diagonal: each vertex appears at each position H/n times (by vertex-transitivity of circulant tournaments), so M[a,a] = sum_j (-1)^j * (H/n) = H/n (since the alternating sum over n terms equals 1 at odd n).

It remains to prove N is palindromic.

**Step 2: Translation symmetry.**

The map tau_c: i -> i+c (mod n) is an automorphism of T for all c. Under tau_c, Hamiltonian paths biject to Hamiltonian paths, preserving positions. Hence:

    N(a, b, j) = N(a+c, b+c, j)   for all c in Z/nZ.

## Notes for the formalizer

(none yet)
