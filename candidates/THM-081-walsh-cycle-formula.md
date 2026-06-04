---
id: THM-081-walsh-cycle-formula
source: 01-canon/theorems/THM-081-walsh-cycle-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-081: Walsh Spectrum of Directed Cycle Counts

**Status:** PROVED (analytical derivation + exhaustive verification at n=5)
**Author:** opus-2026-03-07-S35c8
**Date:** 2026-03-07
**Dependencies:** OCF (THM-002)

## Main Theorem

For a directed k-cycle count t_k(T) on n-vertex tournaments:

**hat{t_k}[S] = (1/2^k) * sum_{directed k-cycles C : S ⊂ edges(C)} (-1)^{asc(S,C)}**

where asc(S,C) counts the number of edges in S that cycle C traverses from smaller to larger vertex.

### Proof

A single directed k-cycle C has indicator:

I_C(T) = prod_{(u,v) in C} A[u][v]

where A[u][v] = 1 if u->v is an arc. In Walsh variables:
- A[i][j] = 1/2 - chi_{ij}/2 for i < j (ascending edge)
- A[j][i] = 1/2 + chi_{ij}/2 for i < j (descending edge)

The Walsh coefficient of I_C at monomial S:

hat{I_C}[S] = E_T[I_C(T) * chi_S(T)]

**If S contains an edge not in C:** The edge variable is independent of I_C, and E[chi_e] = 0, so hat{I_C}[S] = 0.

**If S ⊂ edges(C):** Factor the expectation over edges:
- Edges NOT in S: E[A_{dir}] = 1/2, contributing (1/2)^{k-|S|}
- Edges in S, traversed ascending (i->j, i<j): E[A[i][j] * (-1)^{T_e}] = -1/2
- Edges in S, traversed descending (j->i, i<j): E[A[j][i] * (-1)^{T_e}] = +1/2

Product: hat{I_C}[S] = (1/2)^{k-|S|} * prod_{e in S} (-1)^{asc_e(C)} * (1/2)
= (1/2)^k * (-1)^{asc(S,C)}

Summing over all directed k-cycles: hat{t_k}[S] = sum_C hat{I_C}[S]. QED.

## Notes for the formalizer

(none yet)
