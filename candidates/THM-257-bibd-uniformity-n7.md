---
id: THM-257-bibd-uniformity-n7
source: 01-canon/theorems/THM-257-bibd-uniformity-n7.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-257: BIBD Uniformity Theorem for n=7 Regular Tournaments

**Status:** PROVED (exhaustive + representative computation)
**Filed by:** kind-pasteur-2026-03-20-S1

## Statement

Among the 3 isomorphism classes of regular tournaments on 7 vertices:

| Class | c3 | c5_dir | c7_dir | alpha_1 | alpha_2 | S=a1+2a2 | H |
|-------|-----|--------|--------|---------|---------|----------|-----|
| BIBD | 14 | 42 | 24 | 80 | 7 | 94 | 189 |
| Type II | 14 | 28 | 17 | 59 | 14 | 87 | 175 |
| Type III | 14 | 36 | 15 | 65 | 10 | 85 | 171 |

The BIBD class (Paley T_7) is characterized by:

1. **ALL 21 five-vertex sub-tournaments have identical structure:**
   - Same score sequence (1,2,2,2,3)
   - Same H_5 = 13
   - Exactly 2 directed 5-cycles each

2. **No other class has this uniformity property:**
   - Type II: 3 types of sub-tournaments, scores {(1,1,2,3,3), (1,2,2,2,3), (2,2,2,2,2)}
   - Type III: 3 types, scores {(1,1,2,3,3), (1,2,2,2,3), (2,2,2,2,2)}

3. **The uniformity maximizes total directed cycles (alpha_1=80) while
   minimizing disjoint pairs (alpha_2=7, the minimum of the 3 classes).**

## Key Mechanism: Uniformity vs Disjoint Pairs Tradeoff

The BIBD property means each pair of vertices appears in exactly 2 three-cycles.
This creates uniform sub-tournament scores, which maximizes:
- c5_dir = 42 (avg 2.00 per 5-vertex set, ALL sets contribute equally)
- c7_dir = 24 (the full 7-vertex set has the most Hamiltonian cycles)

But it MINIMIZES disjoint 3-cycle pairs because the balanced 3-cycle distribution
means any two 3-cycles tend to share vertices. alpha_2 = 7 = C(7,1) — exactly
one good partition of V\{v} into two 3-cycles per deleted vertex v.

## Notes for the formalizer

(none yet)
