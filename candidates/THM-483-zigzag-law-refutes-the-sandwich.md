---
id: THM-483-zigzag-law-refutes-the-sandwich
source: 01-canon/theorems/THM-483-zigzag-law-refutes-the-sandwich.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-483: the zigzag law for skew doubling — trans(D(T)) = z(T), and the +2 sandwich (HYP-2360) is refuted by an unbounded family

**Status:** PROVED (parts A–C, hand proofs below) + VERIFIED (two independent
methods: subset-DP and combinations-brute, 0 disagreements; designed chains
pairwise-verified; script `04-computation/trans_doubling_alternating_kps2_0611.py`,
output in 05-knowledge/results/). Refutes HYP-2360 (kind-pasteur's own, THM-455
session); corrects THM-455's Erdős–Moser reading.
**Source:** kind-pasteur-2026-06-11-S2 (Erdős–Moser #1216 thread; the Gleason
dispatch's d⁺/pair-doubling dictionary is the mechanism's coding avatar).

**Doubling arc rules** (THM-447's D(T), derived from H_{2n} = [[H,H],[−Hᵀ,Hᵀ]],
H = I+S): (u,0)→(v,0) iff u→v; (u,1)→(v,1) iff v→u; cross arcs FOLLOW T in both
directions ((u,0)→(v,1) iff u→v or u=v — twins 0→1; (u,1)→(v,0) iff u→v, u≠v).

## A. The alternating family A_l (REFUTES HYP-2360)

A_l on 2l+1 vertices: chains u_1→…→u_l and w_{l+1}→w_l→…→w_1 (i.e. w_j→w_i for
i<j), cross arcs w_i→u_j iff i ≤ j, u_j→w_i iff i ≥ j+1.

**A1. trans(A_l) = l+1 for every l.**
Proof. ≥: {w_1, u_1, …, u_l} is transitive (w_1→u_j ∀j). ≤: let X be transitive,
with u-indices J and w-indices W_X. The 3-cycle u_j → w_i → w_{i'} → u_j exists
whenever i' ≤ j < i, so transitivity forces, for each j ∈ J, that W_X does not
straddle j: W_X ⊆ [1,j] or ⊆ [j+1, l+1]. Hence J ⊆ [1, min W_X − 1] ∪
[max W_X, l], so |J| ≤ l + min W_X − max W_X ≤ l − (|W_X| − 1), giving
|X| = |J| + |W_X| ≤ l+1. (The extremal configurations U_left → W → U_right are
transitive, so equality holds.) ∎

**A2. trans(D(A_l)) ≥ 2l+1**: the sequence w_1', u_1, w_2', u_2, …, w_{l+1}' is
transitive in D(A_l) — primes ascend by the copy-1 reversal (w_j→w_i for i<j),
plains ascend, prime-before-plain needs w_i→u_j for i ≤ j ✓, plain-before-prime
needs u_j→w_i for i ≥ j+1 ✓. ∎ (Exact: trans(D(A_l)) = 2l+1 computed for l ≤ 5.)

**Corollary (HYP-2360 REFUTED).** δ(A_l) = trans(D(A_l)) − trans(A_l) = l is
UNBOUNDED: δ = 3 already at n = 7 (one vertex past the n=6 exhaustive census),
δ = 4 at n = 9, δ = 5 at n = 11. A_2 IS the THM-455 n=5 idx10 exception — the
"alternating-chain mechanism" was the general law, not a sporadic evasion; the
n ≤ 6 census evidence (δ ∈ {1,2} on all 32768) was a horizon artifact. The
trivial bound trans(D(T)) ≤ 2·trans(T) is asymptotically tight (A_l gives
2t − 1 with t = l+1).

## Notes for the formalizer

(none yet)
