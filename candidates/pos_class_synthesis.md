---
id: pos_class_synthesis
source: 05-knowledge/results/pos_class_synthesis.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# POS Class Synthesis — The Self-Complementary Score as OCR Residual Source

**Session:** kind-pasteur-2026-03-21-S16b

## The Core Discovery

At n=5, the ENTIRE OCR residual (1/19 of Var(H)) comes from a SINGLE score class: **(1,2,2,2,3)**. This class is:

1. **Self-complementary** (POS): s_i + s_{n-1-i} = n-1 for all i.
2. The **only ambiguous class** at n=5: H ∈ {11, 13, 15} within a single score class.
3. The class with the **lowest nonzero S₂ = 2** (closest to regular).
4. Contains the **"cone over C₃"** tournament (the canonical non-regular maximizer).

## What Determines H Within the Class

H = 9 + 2·c5_dir, where c5_dir ∈ {1, 2, 3} is the directed Hamiltonian cycle count.

The distinction is controlled by a **single binary choice**: does the score-1 vertex beat the score-3 vertex?

| c5_dir | H | Count | Weak beats Strong? |
|--------|---|-------|--------------------|
| 3 | 15 | 40 | **Yes** |
| 2 | 13 | 120 | No |
| 1 | 11 | 120 | No |

When the weakest vertex (score 1) beats the strongest (score 3), the tournament has maximum Hamiltonian cycle count (c5_dir = 3) and maximum H = 15 within the class. This is the **"upset creates cycles"** principle: the single "wrong-way" arc forces additional directed 5-cycles.

The c5_dir = {1, 2} distinction within the "No" group is determined by the cycle structure among the three middle vertices (all score 2).

## The ANOVA vs Regression Gap

| Measure | Value | Interpretation |
|---------|-------|----------------|
| R²(S₂ regression) | 18/19 ≈ 0.947 | Linear prediction from S₂ |
| R²(ANOVA, score class) | 129/133 ≈ 0.970 | Optimal within-class prediction |
| Gap | 76/2527 ≈ 0.030 | Nonlinearity of H vs S₂ |

The S₂ regression loses 3% to nonlinearity (H is not exactly linear in S₂). But the S₂ collisions (three score classes all with S₂ = 8) lose NOTHING because those classes all have the same mean H.

## Generalization to n=6

## Notes for the formalizer

(none yet)
