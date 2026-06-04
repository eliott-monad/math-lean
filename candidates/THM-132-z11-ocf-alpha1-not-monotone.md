---
id: THM-132-z11-ocf-alpha1-not-monotone
source: 01-canon/theorems/THM-132-z11-ocf-alpha1-not-monotone.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-132
title: Z_11 OCF structure — alpha_1 ordering does NOT match H ordering
status: PROVED (computational, exhaustive over all 32 circulants)
proved_by: opus-2026-03-12-S58
date: 2026-03-12
related_theorems: [THM-126, THM-129, THM-130]
related_hypotheses: [HYP-466]
tags: [paley, ocf, circulant, Z11, independence-polynomial]
---

## Main Result

Among all 32 circulant tournaments on Z_11, Paley T_11 (S = QR_11 = {1,3,4,5,9})
uniquely maximizes H = 95095. There are 4 distinct H values and the full OCF
decomposition H = 1 + 2α₁ + 4α₂ + 8α₃ is:

| S representative | H | α₁ | α₂ | α₃ | Paley? |
|-----------------|--------|--------|--------|------|--------|
| {1,3,4,5,9} | 95095 | 21169 | 10879 | 1155 | YES |
| {1,2,4,5,8} | 93467 | 19541 | 11220 | 1188 | |
| {1,2,3,4,5} | 93027 | 18397 | 11110 | 1474 | |
| {2,3,4,5,10} | 92411 | 19629 | 10912 | 1188 | |

Note: α₄ = 0 for all Z_11 circulants (4 disjoint odd cycles require ≥ 12 vertices).

## Key Finding: α₁ Ordering ≠ H Ordering

The α₁ (total odd cycle count) ordering is:
```
21169 (Paley) > 19629 > 19541 > 18397
```

But the H ordering is:
```
95095 (Paley) > 93467 > 93027 > 92411
```

The tournament with α₁ = 19629 (second-highest total cycles) has the LOWEST H!
This is because its α₂ = 10912 is low — having many cycles but fewer disjoint

## Notes for the formalizer

(none yet)
