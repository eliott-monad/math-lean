---
id: THM-007-f4-distribution
source: 01-canon/theorems/THM-007-f4-distribution.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-007: F4 — Exact Distribution of Type-II Counts per L-Cycle Window

**Type:** Theorem
**Certainty:** 4 — PROOF SKETCH (computationally verified; bijective proof missing)
**Status:** PROVED (analytic); bijective proof OPEN
**Last reviewed:** SYSTEM-2026-03-05-S1
**Disputes:** none
**Tags:** #type-ii #distribution #binomial #ballot-sequences #dyck-paths

---

## Statement

For an odd cycle of length L consecutively embedded in path P', the number of internal signature patterns (of the L−2 interior positions) giving exactly k Type-II positions within the window is:

```
C(L−2, 2k−1)
```

where:
- k ranges from 1 to (L−1)/2
- the minimum (k=1) is C(L−2, 1) = L−2 patterns
- the maximum (k=(L−1)/2) is achieved uniquely by the fully alternating pattern 10101…10

The **average** number of Type-II positions per L-cycle window is:

```
Σ_{k=1}^{(L-1)/2} k · C(L−2, 2k−1) / 2^{L−2}
```

which simplifies to (L−4)/4 for L ≥ 5 (and 0 for L=3, since a 3-cycle gives exactly 1 Type-II position and there are no interior positions to vary).

---

## Proof / Proof Sketch

The boundary conditions fix s[j]=1 and s[j+L−2]=0. The L−2 interior positions s[j+1], …, s[j+L−3] are free binary variables (they are determined by the tournament arcs not constrained by the cycle). So there are 2^{L-2} possible interior patterns.

The number of such patterns with exactly k Type-II positions (1→0 transitions) within the full window, given s[j]=1 fixed at start and s[j+L−2]=0 fixed at end, counts binary strings of length L−2 (the interior) such that the full string (1, interior, 0) has exactly k transitions from 1 to 0.

## Notes for the formalizer

(none yet)
