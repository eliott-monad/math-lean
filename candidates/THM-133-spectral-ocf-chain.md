---
id: THM-133-spectral-ocf-chain
source: 01-canon/theorems/THM-133-spectral-ocf-chain.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-133: Spectral-OCF Chain — Paley Maximizes C₅ via Jensen

**Status:** VERIFIED (computationally at p=7, 11)
**Author:** opus-2026-03-12-S60
**Date:** 2026-03-12

## Statement

For any circulant tournament on Z_p (p prime) with connection set S ⊂ Z_p\{0}, |S| = (p-1)/2:

1. **Universal real part:** All eigenvalues satisfy Re(λ_k) = -1/2 for k ≥ 1.

2. **Writing λ_k = -1/2 + iy_k**, the imaginary parts satisfy:
   - Σ_{k=1}^{p-1} y_k² = p(p-1)/4 (universal, from Parseval)
   - y_{p-k} = -y_k (conjugate pairing)

3. **C₅ formula:** The number of directed 5-cycles satisfies
   C₅ = f(p) - (1/2)Σy_k⁴
   where f(p) = [((p-1)/2)⁵ - (p-1)/32 + 5p(p-1)/16] / 5.

4. **Jensen inequality:** Σy_k⁴ ≥ [p(p-1)/4]² / (p-1) = p²(p-1)/16
   with equality iff all y_k² are equal (spectral flatness).

5. **Paley achieves equality:** For p ≡ 3 mod 4, the Paley tournament T_p has |λ_k|² = (p+1)/4 for all k ≥ 1 (from Gauss sums), giving y_k² = p/4, hence Σy_k⁴ = p²(p-1)/16.

**Corollary:** The Paley tournament maximizes C₅ among all circulant tournaments on Z_p (for any prime p).

## Proof

### Step 1: Re(λ_k) = -1/2

For any circulant tournament with connection set S, the complementary set is -S = {p-s : s ∈ S}, and S ∪ (-S) = Z_p\{0} (since S is a tournament). Therefore:

Re(λ_k) = Σ_{s∈S} cos(2πks/p) = (1/2) Σ_{d=1}^{p-1} cos(2πkd/p) = (1/2)(-1) = -1/2. □

### Step 2: Parseval constraint

Σ_{k=0}^{p-1} |λ_k|² = p·|S| = p(p-1)/2 (standard Parseval for circulants).
With |λ_0|² = ((p-1)/2)², we get Σ_{k≥1} |λ_k|² = (p²-1)/4.
Since |λ_k|² = 1/4 + y_k²: Σy_k² = (p²-1)/4 - (p-1)/4 = p(p-1)/4. □

## Notes for the formalizer

(none yet)
