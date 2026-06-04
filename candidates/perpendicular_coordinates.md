---
id: perpendicular_coordinates
source: 05-knowledge/results/perpendicular_coordinates.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Perpendicular Coordinate Analysis Results
## opus-2026-04-03-S27

### The Two Perpendicular Families
- x+y = c (parallel to hypotenuse): controls SC/NS, blue/black
- x-y = c (perpendicular to hypotenuse): controls skip/wiggly structure
- Grid reflection R: SWAPS x+y layers, PRESERVES x-y layers

### THEOREM: Cross-Pair Swap Counting
At distance d from hypotenuse with k reflection pairs:
  Grid-symmetric (GS) choices = 2^k
  x+y-profile-symmetric (XPY) choices = C(2k, k)
  Cross-pair swap extras = C(2k,k) - 2^k

| k pairs | GS = 2^k | XPY = C(2k,k) | Extras |
|---------|----------|---------------|--------|
| 0 | 1 | 1 | 0 |
| 1 | 2 | 2 | 0 |
| 2 | 4 | 6 | 2 |
| 3 | 8 | 20 | 12 |
| 4 | 16 | 70 | 54 |
| 5 | 32 | 252 | 220 |

### Predicted xpy_sym / gs ratio
| n | GS | XPY-sym | Ratio |
|---|-----|---------|-------|
| 3 | 2 | 2 | 1.000 |
| 4 | 4 | 4 | 1.000 |
| 5 | 16 | 16 | 1.000 |
| 6 | 64 | 96 | 1.500 |
| 7 | 512 | 1152 | 2.250 |
| 8 | 4096 | 23040 | 5.625 |
| 9 | 65536 | 921600 | 14.062 |

### The XPY-sym tilings
These are tilings with symmetric layer COUNTS but not necessarily pairwise
bit matching. They represent "weakly symmetric" configurations that maintain
the statistical balance across the hypotenuse without the strict local
matching that grid-symmetry requires.

## Notes for the formalizer

(none yet)
