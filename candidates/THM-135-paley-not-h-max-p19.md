---
id: THM-135-paley-not-h-max-p19
source: 01-canon/theorems/THM-135-paley-not-h-max-p19.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-135
title: Paley does NOT maximize H among Z_19 circulants — cyclic interval wins
status: PROVED (computational, cross-validated)
proved_by: opus-2026-03-12-S58
date: 2026-03-12
related_theorems: [THM-126, THM-132, THM-133, THM-134]
related_hypotheses: [HYP-464, HYP-466, HYP-469, HYP-471]
tags: [paley, circulant, counterexample, hamiltonian-path, cyclic-interval, Z19]
---

## Main Result

**Theorem (THM-135):** Among all 512 circulant tournaments on Z_19, the Paley
tournament T_19 does NOT maximize the Hamiltonian path count H.

The cyclic interval tournament C_19 (connection set S = {1,2,...,9}) achieves:

```
H(C_19) = 1,184,212,824,763
H(T_19) = 1,172,695,746,915

H(C_19) - H(T_19) = 11,517,077,848  (≈ +1.0%)
```

**Verified independently** by Held-Karp DP (28.9s per tournament), cross-validated
against all known p=11 values.

## The Three H-Value Classes (Among Tested)

| H value | Representative S | # tournaments | Type |
|---------|-----------------|---------------|------|
| 1,184,212,824,763 | {1,...,9} | ≥ 18 | Interval orbit |
| 1,172,695,746,915 | {1,4,5,6,7,9,11,16,17} | ≥ 2 | Paley orbit |
| 1,166,614,794,027 | {1,2,4,5,7,8,10,13,16} | ≥ 1 | Step-3 AP |

The entire multiplicative orbit k·{1,...,9} (k = 1,...,18) gives H = 1,184,212,824,763.
These are all isomorphic tournaments (multiplication by k permutes Z_19).

## Eigenvalue Comparison

## Notes for the formalizer

(none yet)
