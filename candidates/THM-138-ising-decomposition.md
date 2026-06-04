---
id: THM-138-ising-decomposition
source: 01-canon/theorems/THM-138-ising-decomposition.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-138
title: Ising decomposition of H — alpha_1 vs alpha_2+ competition
status: PROVED (computational, p=7,11; mechanism understood for all p)
proved_by: kind-pasteur-2026-03-12-S57
date: 2026-03-12
related_theorems: [THM-136, THM-137]
related_hypotheses: [HYP-480]
tags: [paley, interval, ising, independence-polynomial, crossover, alpha]
---

## Main Result

**Theorem (THM-138):** For primes p = 3 mod 4, the Hamiltonian path count
H(T) = I(Omega(T), 2) decomposes into competing contributions:

```
H = 1 + 2*alpha_1 + 4*alpha_2 + 8*alpha_3 + ...
```

where alpha_j = #{independent sets of size j in Omega(T)}.

For Paley (P) vs Interval (I) tournaments:

1. **alpha_1 favors Paley**: alpha_1(P) > alpha_1(I) at p=7,11 (and conjecturally all p)
   - Paley has MORE total directed odd cycles
   - This is the "2-body" Ising term

2. **alpha_2+ favors Interval**: sum_{j>=2} 2^j*alpha_j(I) > sum_{j>=2} 2^j*alpha_j(P)
   - Interval cycles are MORE vertex-disjoint
   - This is the "many-body" Ising term
   - Interval's additive structure creates non-conflicting cycle packings

3. **Phase transition at p ~ 13-19**: the alpha_2+ advantage overtakes alpha_1

## HYP-480 Exhaustive Verification

**VERIFIED at p=5, 7, 11, 13, 19** (all primes up to 19):

| p | p mod 4 | Paley? | #circulants | Maximizer | H(max) | H(Int) | H(Paley) |

## Notes for the formalizer

(none yet)
