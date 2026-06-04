---
id: packing_forbidden_synthesis
source: 05-knowledge/results/packing_forbidden_synthesis.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# The Packing-Forbidden Connection: A Complete Framework
**opus-2026-03-14-S71f**

## The Packing Hierarchy

A tournament T's independence polynomial I(Ω(T), x) can be interpreted as a "packing" 
of building blocks (bricks). Each brick is a clique component K_c of the conflict graph Ω:

| Brick | I factor | H contribution | Name |
|-------|----------|----------------|------|
| K_1 | (1+x) | ×3 | Simplex |
| K_2 | (1+2x) | ×5 | Cuboid |
| K_3 | (1+3x) | ×7 | **Tesseract (IMPOSSIBLE!)** |
| K_c | (1+cx) | ×(2c+1) | c-cell |

## The Fundamental Theorem

**THEOREM**: The tesseract brick K_3 never occurs as a component of Ω(T).
That is, no tournament has I(Ω(T),x) with a factor (1+3x).

**Proof**: The factor (1+3x) requires 3 mutually adjacent cycles in Ω (forming K_3) 
that are all non-adjacent to every other cycle. This means:
1. Exactly 3 directed odd cycles exist
2. All 3 share pairwise vertex overlaps
3. No other directed odd cycles exist

But:
- At n≤4: Can't have 3 odd cycles (too few vertices)
- At n=5,6: α₁=3 is impossible (the phase transition gap)
- At n≥7: α₁=3 occurs but forces α₂≥2 (disjoint pair forcing)

Since (1+3x) requires α₁=3 AND α₂=0, it's impossible at every n.

## Consequences

### H=7 is permanently forbidden
H=7 = 1·7 has the ONLY factorization 7 (prime). The only brick giving H-contribution 7 
is the tesseract (1+3x). Since the tesseract is impossible, H=7 cannot arise from any 
packing — and since OCF ensures H = I(Ω,2), H=7 is impossible.

## Notes for the formalizer

(none yet)
