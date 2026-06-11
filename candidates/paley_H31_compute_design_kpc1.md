---
id: paley_H31_compute_design_kpc1
source: 05-knowledge/results/paley_H31_compute_design_kpc1.md
source_commit: c21c071
status: open
---

## Informal statement

# Design doc: computing H(T_31) exactly — the run that falsifies or confirms HYP-2371

*kind-pasteur-2026-06-10-S1, Thread E. Companion artifacts:
`04-computation/paley_R31_prediction_kpc1.py` (+ `.out`) — the falsifiable prediction;
`04-computation/paley_rotdp_smallp_verify_kpc1.py` (+ `.out`) — the harness logic
validated exactly at p = 11, 19.*

## 0. What the run decides

HYP-2371 predicts (from the proven cluster expansion HYP-2307/THM-438 — functional
form `R(p) = e(1 − C/p − D/p² − …)` proven-justified, coefficients pinned on the 5
exact values, order-laddered holdout at p=23):

```
R(31) = H(T_31)·2^30/31!  ∈  [2.58949, 2.60249]      (central 2.59599 ± 0.00650)
H(T_31) ∈ [19830629617139608462365775, 19930130881568868002912737]   (~1.988e25)
H(T_31) ≡ 465 (mod 930)        (i.e. H = 465 × odd; |Aff(QR_31)| = 31·30/2 = 465)
```

One exact computation of H(T_31) lands inside or outside. Acceptance tests for any
claimed value (run them ALL before believing the number):

1. `H` is odd (Rédei).
2. `465 | H` (freeness of Aff(QR) on Hamiltonian paths, THM-F3 / Thread B).
3. `H/465` is odd (orbit parity, HYP-1713 PROVED; re-verified on all 5 known values).
4. `R(31) = H·2^30/31!` vs the interval above — the falsifiable claim.
5. Same binary must reproduce `H(T_23) = 15760206976379349` first (seconds).

## 1. Why naive Held–Karp is out

Start-fixed Held–Karp stores `dp[S][v]`, `S ⊆ V∖{0}`, i.e. `2^30 × 31 ≈ 3.3e10`
states × 16 B (uint128) ≈ **532 GB**. Dead on a desktop.

## 2. Design A — Z_31-rotation-reduced layered Held–Karp (the brief's design)

### 2.1 States up to rotation

Drop the fixed start; let `dp(S, v)` = number of directed Hamiltonian paths of the
induced subtournament on `S` ending at `v ∈ S` (start anywhere in `S`). The Paley arc
relation `v→w ⟺ χ(w−v)=+1` is invariant under `x ↦ x+r`, so the rotation group `Z_31`

## Notes for the formalizer

(none yet)
