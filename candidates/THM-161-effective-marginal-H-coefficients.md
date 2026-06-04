---
id: THM-161-effective-marginal-H-coefficients
source: 01-canon/theorems/THM-161-effective-marginal-H-coefficients.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-161: Effective Marginal H Coefficients for Circulant Tournaments

**Status:** VERIFIED (p=7, p=11)
**Session:** kind-pasteur-2026-03-13-S60

## Context

For circulant tournaments on Z_p with orientation set S:

    H(T_S) = 1 + 2*N + 4*alpha_2 + 8*alpha_3    (OCF decomposition)

where N = sum c_k, alpha_j counts j-tuples of pairwise-disjoint directed cycles.

## Statement

Define the **effective marginal H coefficient** b_k as the NET effect on H per unit change in c_k, across the family of circulant orientations:

    H = const + sum_k b_k * c_k

At p=11 (with b_11 = 2 fixed by construction):
- b_5 = -36.9 (NEGATIVE — 5-cycles REDUCE H on net)
- b_7 = -1.5 (NEGATIVE — 7-cycles slightly reduce H)
- b_9 = +3.6 (POSITIVE — 9-cycles are super-valuable, more than Ham cycles)
- b_11 = +2.0 (NEUTRAL — Hamiltonian cycles are "free" benefit)

## Mechanism

Each k-cycle C on vertex set V contributes:
- +1 to N (adding 2 to H directly)
- +C_odd(T[comp(V)]) to alpha_2 (adding 4*C_odd(comp) to H)
- Higher-order alpha_3 terms

The "per-cycle disjoint contribution" at Paley p=11:
- k=3: C_odd(comp) = 172 (constant!) — each 3-cycle is disjoint from 172 others
- k=5: C_odd(comp) = 7-16 (avg 12.56) — moderate disjoint contribution
- k=7: C_odd(comp) = 0-2 (avg 1.22) — minimal disjoint contribution
- k=9: C_odd(comp) = 0 — complement too small for any cycle
- k=11: C_odd(comp) = 0 — complement is empty

## Why Negative b_5?

## Notes for the formalizer

(none yet)
