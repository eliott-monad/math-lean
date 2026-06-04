---
id: THM-153-paley-omega-growth
source: 01-canon/theorems/THM-153-paley-omega-growth.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-153: Geometric Growth of Omega_m for Paley Tournaments

**Status:** VERIFIED (computational, p=7,11,19,23)
**Session:** opus-2026-03-13-S70
**Depends on:** THM-151 (Omega_3 formula), GLMY definitions

## Statement

For the Paley tournament at prime p ≡ 3 mod 4, with Q_k = (p+1)/4:

$$\Omega_m(\text{Paley}_p) = \binom{p}{2} \cdot (Q_k - 1)^{m-1} \quad \text{for } 1 \leq m \leq 4$$

where Q_k = |Ŝ(k)|² is the Fourier magnitude (constant across all k ≠ 0 for Paley).

Equivalently, with q = (p-3)/4:

$$\Omega_m = \frac{p(p-1)}{2} \cdot q^{m-1}$$

## Special case: p = 7

When p = 7: q = (7-3)/4 = 1, so Ω_m = C(7,2) = 21 for ALL 1 ≤ m ≤ 6.
This is the UNIQUE Paley tournament with **constant Omega profile**.

Moreover, the M matrix (regular m-path counts from a to b) has constant
off-diagonal entries: M[a,b] = 1 for all a ≠ b, for ALL m.

## Verification

| p | Q_k | q | Ω₁ | Ω₂ | Ω₃ | Ω₄ | Ω₅ actual | Ω₅ predicted |
|---|-----|---|-----|------|-------|---------|-----------|-------------|
| 7 | 2 | 1 | 21 | 21 | 21 | 21 | 21 | 21 |
| 11 | 3 | 2 | 55 | 110 | 220 | 440 | 715 | 880 |
| 19 | 5 | 4 | 171 | 684 | 2736 | 10944 | 40698 | 43776 |
| 23 | 6 | 5 | 253 | 1265 | 6325 | 31625 | 149017 | 158125 |

Formula exact for m ≤ 4, deviates at m = 5 for p > 7.

## Proof sketch for m = 2

Ω₂ = C(p,3) - t₃. For Paley at p ≡ 3 mod 4:

## Notes for the formalizer

(none yet)
