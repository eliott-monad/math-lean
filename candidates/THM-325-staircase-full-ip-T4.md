---
id: THM-325-staircase-full-ip-T4
source: 01-canon/theorems/THM-325-staircase-full-ip-T4.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-325
title: Full Independence Polynomial of T_4
status: VERIFIED
session: opus-2026-05-23-S5
tags: [staircase, independence-polynomial, real-rooted, TRRT]
related: [THM-318, THM-319, THM-322, THM-323, HYP-1732]
---

## Statement

The conflict graph Ω(T_4) of the all-0 staircase T_4 (n=8) has independence polynomial:

$$I(\Omega(T_4), x) = 1 + 68x + 24x^2$$

## Structure

T_4 has n=8 vertices. Odd cycle breakdown:
- 12 triangles (3-cycles)
- 28 pentagons (5-cycles)  
- 28 heptagons (7-cycles)
- Total: m = 68 odd cycles

The independence number α(Ω(T_4)) = 2, with α_2 = 24 disjoint pairs.

Pair breakdown by cycle-length combination:
- (3,3) pairs: 16 (two disjoint triangles)
- (3,5) pairs: 8 (one triangle + one pentagon)
- (3,7) pairs: 0 (no disjoint triangle-heptagon pair)
- (5,5) pairs: 0 
- (5,7) pairs: 0
- (7,7) pairs: 0

## Key Properties

- **Degree:** d(Ω(T_4)) = 2 (consistent with THM-318: floor(2·4/3) = 2)
- **α(Ω(T_4)) = 2:** maximum IS has size 2
- **Real-rooted:** discriminant = 68² - 4·24 = 4624 - 96 = 4528 > 0; roots ≈ -0.3548 and -67.645
- **Roots are both negative** ✓

## Notes for the formalizer

(none yet)
