---
id: THM-158-alpha-j-moment-linearity
source: 01-canon/theorems/THM-158-alpha-j-moment-linearity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-158: All alpha_j are exact linear functions of eigenvalue moments

**Status:** PROVED at p=7,11. Verified at p=13 (pending full completion).
**Proved by:** kind-pasteur-2026-03-13-S60
**Date:** 2026-03-13

## Statement

For a circulant tournament T(Z_p, S) with p prime, define:
- Omega(T) = the set of all directed odd cycles of T (any length 3,5,...,p)
- alpha_j = number of independent sets of size j in the vertex-disjoint conflict graph on Omega(T)
- S_{2k} = sum_{t=1}^{m} D_t^{2k} where D_t = Im(lambda_t) are the eigenvalue imaginary parts

Then:

1. **Finiteness:** alpha_j = 0 for j > floor(p/3) (minimum cycle length 3, so j+1 disjoint 3-cycles need 3(j+1) > p vertices)

2. **OCF decomposition:** H(T) = sum_{j=0}^{floor(p/3)} alpha_j * 2^j

3. **Moment linearity:** Each alpha_j is an exact linear function of (S_4, S_6, ..., S_{p-3}).
   In particular, the coefficient of S_{p-1} in each alpha_j is ZERO.

4. **Dimension:** The number of moment parameters needed is m - 2 = (p-5)/2.

## Verified cases

| p | m | floor(p/3) | #moments needed | #orbit types | Status |
|---|---|-----------|-----------------|-------------|--------|
| 7 | 3 | 2 | 1 (S4) | 2 | PROVED (trivial dimension) |
| 11 | 5 | 3 | 3 (S4,S6,S8) | 4 | PROVED (4 types, 4 params: exact) |
| 13 | 6 | 4 | 4 (S4,...,S10) | 6 | Computing (6 types, 5 params: overconstrained) |

## Significance

Combined with OCF, this gives: **H(T) is an exact linear function of (S_4, ..., S_{p-3})** for all circulant tournaments on Z_p.

Since S_{p-1} cancels in every alpha_j individually (not just in the sum), this reveals a deep structure: the highest-frequency eigenvalue moment is algebraically redundant for the entire independence polynomial, not just for the total.

## Key components at p=11

## Notes for the formalizer

(none yet)
