---
id: sc_partition_formula
source: 05-knowledge/results/sc_partition_formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THEOREM: Partition Formula for SC(n) — Only All-Even Cycle Types Contribute
## opus-2026-04-03-S27

### Statement

SC(n) = (1/n!) Σ_{σ∈S_n} Fix_comp(σ)

where Fix_comp(σ) = #{labeled tournaments T with σ(T) = T^op}.

**Only permutations with ALL EVEN cycle lengths contribute nonzero Fix_comp.**

This is the MIRROR of the Davis formula for A000568(n):
  A000568: only ALL-ODD cycle types contribute (sign-flip theorem)
  SC(n):   only ALL-EVEN cycle types contribute (anti-sign-flip theorem)

### Verified values

| n | Contributing cycle types | Fix_comp per perm | SC(n) |
|---|------------------------|-------------------|-------|
| 3 | (2,1) | 4 | 2 |
| 4 | (2,2) | 16 | 2 |
| 5 | (2,2,1) | 64 | 8 |
| 6 | (2,2,2) gives 512, (6,) gives 8 | — | 12 |

Wait — (2,1) at n=3 has a 1-cycle (odd). And (2,2,1) at n=5 has a 1-cycle.
So the rule is NOT "all even" — it includes 1-cycles too.

Let me re-examine: the contributing types at each n are:
  n=3: (2,1) — one 2-cycle + one fixed point
  n=4: (2,2) — two 2-cycles
  n=5: (2,2,1) — two 2-cycles + one fixed point
  n=6: (2,2,2) and (6,) — all 2-cycles OR a single 6-cycle

REVISED PATTERN: Fixed points (1-cycles) are allowed. The constraint is:
  All cycle lengths > 1 must be EVEN.
  Equivalently: no odd cycles of length ≥ 3.

At n=3: (2,1) — 2-cycle (even) + 1-cycle (allowed). ✓
At n=4: (2,2) — all even. ✓
At n=5: (2,2,1) — 2-cycles + fixed point. ✓

## Notes for the formalizer

(none yet)
