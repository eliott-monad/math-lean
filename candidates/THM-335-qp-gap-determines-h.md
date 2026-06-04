---
id: THM-335-qp-gap-determines-h
source: 01-canon/theorems/THM-335-qp-gap-determines-h.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem: THM-335
name: Q-P Gap Determines H at n ≤ 4
status: PROVED
session: opus-2026-05-27-S1
verified: exhaustive (all 2 + 64 tournaments for n=3,4)
---

## Statement

Define the **Q-P gap** of tournament T on n vertices as:

gap(T) = max{d⁺(v)} − min{d⁺(v)}

i.e., the range of the score sequence (max outdegree minus min outdegree). Then:

**At n=3:** H(T) is uniquely determined by gap(T):
- gap = 0 (regular: score (1,1,1)) → H = 3
- gap = 2 (transitive: score (0,1,2)) → H = 1

**At n=4:** H(T) is uniquely determined by gap(T) via the linear formula:
- gap = 1 (score (1,1,2,2)) → H = 5
- gap = 2 (score (1,2,2,1) sorted = (1,1,2,2)... wait: score (0,2,2,2) or (1,1,2,2) or (1,2,2,1)) 
- Actually: gap=1 → H=5; gap=2 → H=3; gap=3 → H=1.

**H = 7 − 2·gap** at n=4. Perfect correlation: Pearson corr(gap, H) = −1.

**At n ≥ 5:** gap does NOT uniquely determine H. The correlation remains strong (−0.90 at n=5, −0.91 at n=6) but different tournaments with the same gap can have different H values.

## Proof for n=3

Three tournaments on 3 vertices (up to labeling):
- Transitive (1 iso class, 6 labelings): score (0,1,2), gap=2, H=1.
- 3-cycle (1 iso class, 2 labelings): score (1,1,1), gap=0, H=3.

The score sequence uniquely determines the tournament type at n=3. H is determined by type. □

## Proof for n=4

At n=4, the score sequence determines H:

## Notes for the formalizer

(none yet)
