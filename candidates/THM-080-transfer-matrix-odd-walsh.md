---
id: THM-080-transfer-matrix-odd-walsh
source: 01-canon/theorems/THM-080-transfer-matrix-odd-walsh.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-080: Complete Walsh Spectrum of Transfer Matrix M[a,b]

**Status:** PROVED (analytical derivation + verification at n=5 exhaustive, n=7 reconstruction 20/20)
**Author:** opus-2026-03-07-S35c5, extended S35c6, corrected S35c7
**Date:** 2026-03-07
**Dependencies:** THM-030 (transfer matrix symmetry), THM-077 (Walsh OCF proof)

## Main Theorem: Complete Walsh Formula for M[a,b]

For the transfer matrix M[a,b](T) = sum_{S subset U} (-1)^|S| E_a(S+{a}) B_b(R+{b}):

**|hat{M[a,b]}[S]| = 2^s * (n-2-|S|)! / 2^{n-2}**

**sign(hat{M[a,b]}[S]) = (-1)^{asc_root(S, a, b)}**

when S is a *valid monomial* (defined below), and 0 otherwise.

Here **s = number of unrooted (even-length) components** of S — components containing neither a nor b.

### Sign Convention (root-based traversal)

**asc_root(S, a, b)** counts ascending edges with the following traversal:
- **a-rooted components** (containing a): traverse from a outward
- **b-rooted components** (containing b): traverse from b outward
- **Unrooted components**: traverse from smaller endpoint (either direction gives same sign for even length)

For (a,b) = (0,1) or any pair where both roots are the smallest endpoints of their components, this reduces to the standard asc(S) = ascents from smaller endpoints.

**Verified exhaustively** at n=5 for (a,b) = (0,1), (0,2), (0,3), (1,2), (2,3), (3,4): **512/512 matches each**.

### Valid Monomial Conditions

S is valid for M[a,b] if and only if:
1. S forms a union of disjoint paths in the complete graph K_n
2. |S| ≡ n (mod 2) — odd for odd n, even for even n
3. |S| <= n-2 (so the factorial is defined)
4. No connected component of S contains both a and b
5. Components containing a: vertex a must be at a path endpoint
6. Components containing b: vertex b must be at a path endpoint
7. Components containing neither a nor b: must have even length

## Notes for the formalizer

(none yet)
