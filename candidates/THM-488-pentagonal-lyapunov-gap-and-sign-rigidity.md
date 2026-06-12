---
id: THM-488-pentagonal-lyapunov-gap-and-sign-rigidity
source: 01-canon/theorems/THM-488-pentagonal-lyapunov-gap-and-sign-rigidity.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-488: the pentagonal Lyapunov gap and the sign-rigidity of Euler's recurrence

**Status:** Part A (zero-free characterization) PROVED forward + reverse IVT-half;
reverse HARD HALF (B(S) ≥ 0) CERTIFIED by the argument principle (exact winding
numbers) on |S| ≤ 6, k ≤ 12 — 1585/1585, 0 counterexamples, with the
truncation-artifact correction; earlier passes 218/218 (k≤8,|S|≤5) and K=10 sweep
1023/1024. Part B (Lyapunov constants) COMPUTED, method VALIDATED against
Viswanath. Scripts `04-computation/pentagonal_lyapunov_kps3_0611.py`,
`pentagonal_rigidity_proof_kps3_0611.py`, `rigidity_winding_kps_0611.py`,
`rigidity_winding_diag_kps_0611.py`, `rigidity_winding_stress_kps_0611.py`,
`rigidity_winding_boundary_kps_0611.py` (+ .out).
**Source:** kind-pasteur-2026-06-11-S3 (HYP-2423/2417/2418). Continues the repo's
random-sign Lyapunov theme (HYP-614, Viswanath/Embree–Trefethen) and feeds the
code bridge (THM-487).

## Setup

Euler's partition recurrence, written as a signed linear recurrence with lags at
the generalized pentagonal numbers g_k = k(3k−1)/2, ḡ_k = k(3k+1)/2:
  a_n = Σ_{k≥1} ε_k ( a_{n−g_k} + a_{n−ḡ_k} ),  a_0 = 1.
Its generating function is 1/F_ε(x), F_ε(x) = 1 − Σ_k ε_k (x^{g_k} + x^{ḡ_k}).
For **Euler's signs ε_k = (−1)^{k+1}**, the pentagonal number theorem gives
F_ε(x) = Π_{n≥1}(1 − x^n), and a_n = p(n), the partition function.

The exponential growth rate of (a_n) is
  rate(ε) = max(0, −log r(ε)),  r(ε) = least modulus of a zero of F_ε in |x| ≤ 1,
so **rate(ε) > 0 ⟺ F_ε has a zero in the OPEN unit disk** (when F_ε is zero-free
inside, the coefficients are subexponential — governed by the boundary, the
essential singularity at x = 1).

## A. Sign rigidity (the zero-free characterization)

**Theorem A.** Among ±1 sign sequences ε differing from Euler's in finitely many
places, F_ε is zero-free in the open unit disk — equivalently rate(ε) = 0,
equivalently a_n grows subexponentially — **iff ε is Euler's alternation
(−1)^{k+1}**.

**Proof, forward (ε = Euler ⟹ rate 0).** F_Euler = Π(1−x^n); each factor is
zero-free in |x| < 1 and the product converges there, so F_Euler is zero-free in
the open disk. Hence rate = 0; concretely a_n = p(n) ~ exp(π√(2n/3))/(4n√3)

## Notes for the formalizer

(none yet)
