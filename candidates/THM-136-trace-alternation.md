---
id: THM-136-trace-alternation
source: 01-canon/theorems/THM-136-trace-alternation.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-136
title: Trace alternation theorem — Paley vs Interval k mod 4 pattern
status: PROVED (algebraic for all p >= 7, computational verification p <= 2000)
proved_by: kind-pasteur-2026-03-12-S57 (algebraic proof), kind-pasteur-S56c (discovery)
date: 2026-03-12
related_theorems: [THM-130, THM-133, THM-134, THM-135]
related_hypotheses: [HYP-460, HYP-473, HYP-474, HYP-481]
tags: [paley, circulant, trace, eigenvalue, gauss-sum, dirichlet-kernel, alternation]
---

## Main Result

**Theorem (THM-136):** For primes p = 3 mod 4, let T_P be the Paley tournament
and T_I the cyclic interval tournament (S = {1,...,(p-1)/2}) on Z_p. Then for
all odd k with 5 <= k <= p:

```
sign(tr(A_P^k) - tr(A_I^k)) = (-1)^{(k-1)/2}
```

**CORRECTED (kind-pasteur-S57):** Original formula had (-1)^{(k-3)/2} which gives the
OPPOSITE sign. Verified exhaustively at p=7,11,19,23 for all odd k:
  k=5: Delta > 0, (-1)^{(5-1)/2} = (-1)^2 = +1 CORRECT
  k=7: Delta < 0, (-1)^{(7-1)/2} = (-1)^3 = -1 CORRECT

Equivalently: sign(Delta_k) = +1 if k = 1 mod 4, -1 if k = 3 mod 4.

That is:
- **k = 1 mod 4** (k = 5, 9, 13, ...): Paley has higher trace (Paley wins)
- **k = 3 mod 4** (k = 7, 11, 15, ...): Interval has higher trace (Interval wins)
- **k = 3**: TIE (c_3 constant for all circulant tournaments on Z_p)

The split is **exactly even**: (p-3)/4 wins each, verified at every prime.

## Computational Verification

**ZERO violations** across all tested primes p = 3 mod 4:
- Part 1 (k=5 exact DP): 154 primes p up to 2000, all Delta_5 > 0
- Part 2 (all odd k, eigenvalue): 1064 tests across p up to 200, all correct signs

## Notes for the formalizer

(none yet)
