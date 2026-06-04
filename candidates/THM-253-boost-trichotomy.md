---
id: THM-253-boost-trichotomy
source: 01-canon/theorems/THM-253-boost-trichotomy.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-253: The Boost Trichotomy — Three Groups of Three

**Status:** PROVED
**Session:** kind-pasteur-2026-03-17-S116n33

## Observation

At n=6 (m=10), the 9 nontrivial Cayley boost values Q(λ_k) = (10-k)/k split into three groups of three:

| Group | k values | Boosts | Prime content | Role |
|-------|----------|--------|---------------|------|
| **I** | 1, 2, 3 | 9, 4, 7/3 | Hurwitz primes in NUMERATOR | PERSISTENT |
| **II** | 4, 5, 6 | 3/2, 1, 2/3 | Only {2,3} (no 7) | TRANSIENT |
| **III** | 7, 8, 9 | 3/7, 1/4, 1/9 | Hurwitz primes in DENOMINATOR | OSCILLATING |

## Theorem (Boost Trichotomy)

The Cayley boost spectrum Q(λ_k) for k = 1, ..., 2s-1 (where m = 2s = 10, s = 5) partitions into three groups:

**Group I** (k = 1, ..., s-2): Q(λ_k) > 1. The Hurwitz primes {2, 3, 7} appear in the numerators.

**Group II** (k = s-1, s, s+1): Q(λ_k) ≈ 1. Only the geometric base primes {2, 3} appear. The forbidden prime 7 is ABSENT.

**Group III** (k = s+2, ..., 2s-1): Q(λ_k) < 1. The Hurwitz primes appear in the denominators. Group III = 1 / Group I (by the functional equation).

### Proof

Q(λ_k) = (m-k)/k = (10-k)/k.

For k ≤ s-2 = 3: (10-k)/k ≥ 7/3 > 1. The numerator 10-k ∈ {9, 8, 7} contains factors of {2, 3, 7}.

For k ∈ {s-1, s, s+1} = {4, 5, 6}: (10-k)/k ∈ {6/4, 5/5, 4/6} = {3/2, 1, 2/3}. Only primes 2 and 3 appear. The prime 7 divides neither numerator nor denominator.

For k ≥ s+2 = 7: (10-k)/k ≤ 3/7 < 1. The denominator k ∈ {7, 8, 9} contains factors of {2, 3, 7}. Each value is the reciprocal of a Group I value: Q(λ_{10-k}) = 1/Q(λ_k). ∎

## The Three-by-Three Matrix

The 9 boosts form a 3×3 matrix indexed by (Hurwitz prime content, group):

```

## Notes for the formalizer

(none yet)
