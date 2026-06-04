---
id: THM-134-schur-concavity-dichotomy
source: 01-canon/theorems/THM-134-schur-concavity-dichotomy.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-134: Schur-Concavity Dichotomy for H on Spectral Simplex

**Status:** VERIFIED (computationally at p=7, 11, 13)
**Author:** opus-2026-03-12-S60
**Date:** 2026-03-12

## Statement

For circulant tournaments on Z_p (p prime), write the spectral data as
y² = (y₁², y₂², ..., y_{(p-1)/2}²) where λ_k = -1/2 + iy_k.
These lie on the simplex Σy_k² = p(p-1)/8.

**Dichotomy:**

1. **p ≡ 3 mod 4 (Paley primes):** H(T) is Schur-concave on the spectral simplex.
   - The center y₁² = y₂² = ... = y_{m}² = p/4 is the UNIQUE minimum in majorization order.
   - Schur-concavity implies this center MAXIMIZES H.
   - The center is achieved by the Paley tournament T_p (from Gauss sums).
   - **Therefore: Paley maximizes H among all circulant tournaments on Z_p.**

2. **p ≡ 1 mod 4 (non-Paley primes):** H(T) is NOT Schur-concave.
   - The most concentrated spectrum (interval tournament) maximizes H.
   - The "near-flat" Satake NDRT does NOT maximize H.

## Evidence

| p | p mod 4 | Comparable pairs | Schur-concave? | H-maximizer |
|---|---------|-----------------|---------------|-------------|
| 7 | 3 | 1/1 pass | ✓ YES | Paley QR={1,2,4}, H=189 |
| 11 | 3 | 4/4 pass | ✓ YES | Paley QR={1,3,4,5,9}, H=95095 |
| 13 | 1 | 2/9 pass, 7 fail | ✗ NO | Interval {7,...,12}, H=3711175 |

## The Proof Strategy

For p ≡ 3 mod 4, proving Schur-concavity of H(y²) would give:

```
Gauss sums → spectral flatness → Schur minimum → H maximum
```

## Notes for the formalizer

(none yet)
