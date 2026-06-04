---
id: THM-128-z13-circulant-maximizer-structure
source: 01-canon/theorems/THM-128-z13-circulant-maximizer-structure.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-128
title: Z_13 circulant tournament maximizer — spectral flatness anti-correlated with H at p≡1 mod 4
status: PROVED (exhaustive over all 64 circulants on Z_13)
proved_by: opus-2026-03-12-S57
date: 2026-03-12
related_theorems: [THM-126, THM-127]
related_hypotheses: [HYP-443]
tags: [circulant, maximizer, spectral, Z13, Satake, p-equiv-1-mod-4]
---

## Main Result

Among all 64 circulant tournaments on Z_13, the **H-maximizer is the orbit of
S = {1,3,5,7,9,11}** (odd steps mod 13), achieving H = **3,711,175**.

The Satake NDRT S = {1,2,3,5,6,9} achieves H = **3,703,011 < 3,711,175**.

**Spectral flatness is ANTI-CORRELATED with H at p=13** — the OPPOSITE of p=7.

## All distinct H values at Z_13 (64 tournaments, 6 distinct values)

| H | Count | Spread | NDR_range | Representative S |
|---|---|---|---|---|
| 3,711,175 | 12 | 3.6332 | 5 | {1,3,5,7,9,11} |
| 3,707,483 | 12 | 3.1734 | 3 | {1,2,3,4,5,7} |
| 3,704,857 | 16 | 2.2913 | 2 | {1,2,3,4,6,8} |
| 3,703,011 | 4 | 1.0000 | 1 | {1,2,3,5,6,9} ← Satake |
| 3,683,797 | 12 | 2.0579 | 2 | {1,3,4,5,7,11} |
| 3,669,497 | 8 | 2.4449 | 3 | {1,2,3,4,6,12}? |

## Orbit Structure Under Z_13*

**Maximizer orbit:** The 12 maximizers form a SINGLE isomorphism class — the orbit of
{1,3,5,7,9,11} under Z_13* has size 12 (trivial stabilizer). ALL 12 connection sets are:

```
a=1:  {1, 3, 5, 7, 9,11}    a=2:  {1, 2, 5, 6, 9,10}
a=3:  {1, 2, 3, 7, 8, 9}    a=4:  {2, 4, 5, 7,10,12}
a=5:  {2, 3, 5, 6, 9,12}    a=6:  {1, 2, 3, 4, 5, 6}

## Notes for the formalizer

(none yet)
