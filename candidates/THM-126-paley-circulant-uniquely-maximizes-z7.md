---
id: THM-126-paley-circulant-uniquely-maximizes-z7
source: 01-canon/theorems/THM-126-paley-circulant-uniquely-maximizes-z7.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-126
title: Paley tournament uniquely maximizes H among circulants on Z_7
status: PROVED (computational — exhaustive over all 8 circulants on Z_7)
proved_by: opus-2026-03-12
date: 2026-03-12
related_hypotheses: [HYP-400, HYP-437]
related_theorems: [THM-125]
tags: [paley, circulant, maximizer, spectral, hamiltonian-paths]
---

## Statement

Among all 8 circulant tournaments on Z_7, the Paley tournament T_7 (connection set
S = QR_7 = {1,2,4} and its complement {3,5,6}) is the **unique** maximizer of H(T).

**Exact values:**
| Connection set S | H(T) | Spectral spread | Paley? |
|---|---|---|---|
| {1,2,4} | **189** | 0.0000 | YES |
| {3,5,6} | **189** | 0.0000 | YES |
| {1,2,3} | 175 | 1.6920 | no |
| {1,3,5} | 175 | 1.6920 | no |
| {1,4,5} | 175 | 1.6920 | no |
| {2,3,6} | 175 | 1.6920 | no |
| {2,4,6} | 175 | 1.6920 | no |
| {4,5,6} | 175 | 1.6920 | no |

(Note: {3,5,6} = complement of {1,2,4} = T_7^{op}; since T_7 ≅ T_7^{op} for p≡3 mod 4,
both give H=189.)

## Proof

Exhaustive computation via Held-Karp DP over all 8 = 2^{(p-1)/2} = 2^3 connection sets.
Each H value computed exactly. Script: `04-computation/paley_maximizer_circulant_test.py`.
Output: `05-knowledge/results/paley_maximizer_circulant_test.out`.

## Spectral Flatness Theorem (Z_7 case)

**Theorem:** Among circulant tournaments on Z_7, flat eigenvalue spectrum ↔ maximum H.

## Notes for the formalizer

(none yet)
