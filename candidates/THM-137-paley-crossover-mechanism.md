---
id: THM-137-paley-crossover-mechanism
source: 01-canon/theorems/THM-137-paley-crossover-mechanism.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-137
title: The Paley-to-Interval crossover mechanism for H-maximization
status: PROVED (p=7,11 analytical; p=19 computational; mechanism understood)
proved_by: kind-pasteur-2026-03-12-S56c
date: 2026-03-12
related_theorems: [THM-130, THM-133, THM-134, THM-135, THM-136]
related_hypotheses: [HYP-474, HYP-479, HYP-480, HYP-481, HYP-482]
tags: [paley, interval, crossover, hamiltonian-path, spectral, additive-combinatorics]
---

## Main Result

**Theorem (THM-137):** The Paley tournament T_P maximizes H among circulant
tournaments on Z_p at p = 3, 7, 11, but NOT at p = 19 (where the cyclic interval
C_p wins). The crossover is caused by the competition between two effects:

1. **Paley cycle advantage**: Paley maximizes directed k-cycle counts c_k at
   EVERY odd k (HYP-474), giving more terms in the OCF.

2. **Interval structural advantage**: The interval's cycles are more INDEPENDENT
   (higher alpha_2), contributing more to the higher-order OCF terms.

At small p, effect (1) dominates. At large p, the exponential growth of the
interval's dominant eigenvalue amplifies effect (2) beyond what (1) can overcome.

## The Three-Layer Structure

### Layer 1: Spectral (THM-136, trace alternation)

Both eigenvalue sums oscillate with k mod 4:
- k = 1 mod 4: Paley wins tr(A^k) (less negative eigenvalue sum)
- k = 3 mod 4: Interval wins tr(A^k) (more positive eigenvalue sum)

This comes from both sets having eigenvalue phases near pi/2:
- Paley: theta = arctan(sqrt(p)) = pi/2 - O(1/sqrt(p))
- Interval: phi_1 = pi*(p+1)/(2p) = pi/2 + O(1/p)

The interval's dominant eigenvalue |mu_1| ~ p/pi grows faster than Paley's
uniform |lambda| = sqrt((p+1)/4) ~ sqrt(p)/2.

## Notes for the formalizer

(none yet)
