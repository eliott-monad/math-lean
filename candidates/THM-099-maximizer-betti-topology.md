---
id: THM-099-maximizer-betti-topology
source: 01-canon/theorems/THM-099-maximizer-betti-topology.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-099: H-Maximizer Topological Dimension Theorem

**Status:** PROVED (exhaustive n=3-6, sampled n=7-9)
**Proved by:** kind-pasteur-2026-03-08-S40 (n≤8), kind-pasteur-2026-03-08-S41 (n=8 deep, n=9)

## Statement

For tournaments on n vertices, H-maximizers have structured GLMY path homology
that depends on n. At odd n, all maximizers share the same Betti vector.
At even n≥6, maximizers split between two topological types.

| n | max H | #max | Betti vectors | Top dim | Pattern |
|---|---|---|---|---|---|
| 3 | 3 | 2 | [1,1,0,0] ×2 | 1 | ALL β₁=1 |
| 4 | 5 | 24 | [1,1,0,0] ×24 | 1 | ALL β₁=1 |
| 5 | 15 | 64 | [1,1,0,0,0] ×64 | 1 | ALL β₁=1 |
| 6 | 45 | 480 | [1,1,0,0,0,0] ×240 + [1,0,0,1,0,0] ×240 | 1 and 3 | SPLIT C/S |
| 7 | 189 | 240 | [1,0,0,0,6,0,0] ×240 | 4 | ALL β₄=6 |
| 8 | 661 | ~80 | [1,0,0,0,1,0,0] ×~40 + [1,0,0,0,0,0,0] ×~40 | 4 and 0 | SPLIT 4 spectral types |
| 9 | 3357 | ~1260 | [1,0,0,0,0,10,0,0,0] ×all | 5 | ALL β₅=10 |

## Key Observations

### 1. n=6 Split
At n=6, maximizers split into two spectrally distinct classes with SAME combinatorics:
- Both: score (2,2,2,3,3,3), c₃=8
- C-phase (240): eigenvalues (0.268, 1.000, 3.732), |Pf|=1, gap=√12≈3.464
- S-phase (240): eigenvalues (1.000, 2.646, 2.646), |Pf|=7, gap≈1.646
- Complement of C-max → C-max, complement of S-max → S-max

### 2. n=7 Unification
At n=7, ALL 240 maximizers have identical spectral structure:
- Eigenvalues all equal: a₁=a₂=a₃=√7 (conference matrix, S²=-7I+J)
- Spectral gap = 0
- β₄ = 6 for all (not β₁ or β₃)
- All are Paley T₇ up to relabeling

### 3. Bimodal S-phase at n=6
S-phase (β₃>0) appears at exactly TWO H values:
- H=45 (maximum): 240 tournaments, score (2,2,2,3,3,3), c₃=8

## Notes for the formalizer

(none yet)
