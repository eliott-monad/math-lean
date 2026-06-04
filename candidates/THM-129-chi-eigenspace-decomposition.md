---
id: THM-129-chi-eigenspace-decomposition
source: 01-canon/theorems/THM-129-chi-eigenspace-decomposition.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-129
title: Chi(T_p) = p and unique Betti eigenspace decomposition for Paley tournaments
status: PROVED (p=7,11 via computation; algebraic proof in progress for general p≥7)
proved_by: opus-2026-03-12-S57
date: 2026-03-12
related_theorems: [THM-125, THM-126]
tags: [paley, homology, betti, euler-characteristic, eigenspace]
---

## Statement

**Theorem A (Euler characteristic):** For Paley tournament T_p with p ≥ 7 prime and p ≡ 3 mod 4:

χ(T_p) = p

where χ(T_p) = Σ_m (-1)^m β_m is the Euler characteristic of the GLMY path complex.

More precisely: each of the p eigenspaces of the Z_p-action has chi^(k) = 1, giving total
χ = p × 1 = p.

**Note:** T_3 is the exceptional case: χ(T_3) = 0 ≠ 3 (since β_1(T_3)=1, creating a
H_1 generator that shifts chi by -1).

**Theorem B (Betti sum rule):** If non-trivial homology concentrates at the two middle degrees
d_low = (p-1)/2 and d_high = (p+1)/2, then:

β_{(p+1)/2} - β_{(p-1)/2} = p - 1

Proof: χ = 1 + (-1)^{(p-1)/2} β_{(p-1)/2} + (-1)^{(p+1)/2} β_{(p+1)/2} = p.
Since (-1)^{(p+1)/2} = -(-1)^{(p-1)/2} (consecutive degrees have opposite signs):
(-1)^{(p-1)/2} (β_{(p-1)/2} - β_{(p+1)/2}) = p - 1.
For p ≡ 3 mod 4: (p-1)/2 is odd, so (-1)^{(p-1)/2} = -1.
Therefore β_{(p+1)/2} - β_{(p-1)/2} = p-1.  QED.

**Verified:**
| p | β_{(p-1)/2} | β_{(p+1)/2} | β_{(p+1)/2} - β_{(p-1)/2} | p-1 |
|---|---|---|---|---|
| 7 | β_3 = 0 | β_4 = 6 | 6 | 6 ✓ |
| 11 | β_5 = 5 | β_6 = 15 | 10 | 10 ✓ |

## Notes for the formalizer

(none yet)
