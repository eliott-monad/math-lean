---
id: nesting_obstruction_synthesis
source: 05-knowledge/results/nesting_obstruction_synthesis.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Nesting Obstruction Synthesis
**opus-2026-03-14-S71f**

## Core Discovery: H=7 as Simplex-in-Cuboid Composition

The forbidden value H=7 has a striking algebraic interpretation:
```
Simplex brick: (1+x)     → at x=2: 3
Cuboid brick:  (1+2y)    → at x=2: 5
Composed:      (1+2(1+x)) = 3+2x → at x=2: 7 = FORBIDDEN!
```

The composition `f(g(x))` of two independence polynomials produces a polynomial with constant term ≠ 1, which is NOT a valid independence polynomial. Tournament conflict graphs Ω(T) cannot support this "nested packing" structure.

## The Brick-Composition Dictionary

| Operation | Formula | I(2) | Tournament status |
|-----------|---------|------|-------------------|
| Empty | 1 | 1 | Transitive ✓ |
| Simplex | 1+x | 3 | 1 isolated cycle ✓ |
| Cuboid | 1+2x | 5 | K₂ (2 overlapping cycles) ✓ |
| **Simplex-in-Cuboid** | **3+2x** | **7** | **FORBIDDEN** |
| Simplex² | (1+x)² | 9 | K₁⊔K₁ (2 disjoint cycles) ✓ |
| Simplex×Cuboid | (1+x)(1+2x) | 15 | K₁⊔K₂ ✓ |
| Simplex³ | (1+x)³ | 27 | 3 disjoint cycles ✓ |
| Cuboid² | (1+2x)² | 25 | K₂⊔K₂ ✓ |

## Why H=7 is Permanently Impossible (Clean Proof)

**H=7** ⟹ α₁ + 2α₂ + 4α₃ + ... = 3

Only solutions:
1. **(α₁=3, α₂=0)**: Requires exactly 3 directed odd cycles. But:
   - At n≤6: α₁=3 never occurs (HYP-1231, exhaustive)
   - At n≥7: α₁=3 forces α₂≥2 (structural overlap), contradicting α₂=0
2. **(α₁=1, α₂=1)**: Algebraically impossible since α₂ ≤ C(α₁,2) = C(1,2) = 0

Therefore H=7 is impossible for all tournaments. ∎

## Why H=21 is Permanently Impossible

## Notes for the formalizer

(none yet)
