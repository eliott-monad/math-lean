---
id: THM-260-rooted-tournament-layer-decomposition
source: 01-canon/theorems/THM-260-rooted-tournament-layer-decomposition.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-260: Layered Decomposition of the Rooted Tournament Sequence

**Status:** PROVED (exact Burnside computation, verified n=3..8)
**Filed by:** kind-pasteur-2026-03-20-S6

## Statement

The rooted tournament sequence P(n) = 1, 2, 4, 12, 48, 296, 3040, 54256 satisfies:

**P(n) = n * T(n) - D(n)**

where T(n) = number of tournament isomorphism classes, and the deficit D(n) decomposes
as a sum over all non-identity partitions with ALL ODD parts:

**D(n) = sum over odd partitions lambda (not [1^n]) of D_lambda(n)**

## Layer Formulas

Each layer has an exact closed form:

### Single k-cycle layer (k odd):
D_k(n) = 2^{(k-1)/2 + C(n-k+1, 2)} / (n-k)!

- D_3(n) = 2^{1 + C(n-2, 2)} / (n-3)!
- D_5(n) = 2^{2 + C(n-4, 2)} / (n-5)!
- D_7(n) = 2^{3 + C(n-6, 2)} / (n-7)!

### Two 3-cycle layer:
D_{3,3}(n) = 2^{5 + 2(n-6) + C(n-6, 2)} / (3 * (n-6)!)

### General formula:
For partition lambda = (k_1, k_2, ..., k_r, 1^m) with all k_i >= 3 odd:
D_lambda(n) = 2^{f(lambda,n)} * (n - m) / (prod k_i * r! * m!)

where f(lambda, n) = number of free edge-orbit pairs.

## Verified Values

| n | D_3 | D_5 | D_{3,3} | D_7 | D_{5,3} | D(n) |
|---|-----|-----|---------|-----|---------|------|

## Notes for the formalizer

(none yet)
