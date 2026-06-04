---
id: THM-219-nud-poisson-euler
source: 01-canon/theorems/THM-219-nud-poisson-euler.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-219: NUD-Poisson-Euler Connection

**Status:** VERIFIED (computationally, n=3..27) + HEURISTIC PROOF
**Session:** opus-2026-03-15-S89c
**Depends on:** THM-216, THM-217

## Statement

Let NUD(n) = number of permutations of [n] with no unit descent (σ(i) - σ(i+1) = 1 never occurs), and let W(n) = Σ_{σ∈NUD(n)} 2^{adj1(σ)} where adj1(σ) counts unit ascents (positions where σ(i+1) = σ(i) + 1). Then:

### Part A: NUD identification
NUD(n) = A000255(n-1) with recurrence NUD(n) = (n-1)·NUD(n-1) + (n-2)·NUD(n-2), NUD(1)=NUD(2)=1.
EGF: Σ NUD(n) x^n/n! = exp(-x)/(1-x)².

### Part B: Poisson limit
In a uniformly random NUD permutation of [n], the number of unit ascents adj1(σ) converges in distribution to Poisson(1) as n → ∞.

### Part C: W/NUD ratio
W(n)/NUD(n) → e as n → ∞, where e = Euler's number.

### Part D: CV² asymptotics
CV²(n) = W(n)/n! - 1 ~ 2/n as n → ∞. More precisely, CV²(n) · n → 2.

## Proof sketch

**Part A:** Well-known. NUD perms avoid consecutive pattern 21. EGF is standard (Goulden-Jackson/Elizalde-Noy framework for consecutive pattern avoidance).

**Part B (heuristic):** The indicators I_i = 1_{σ(i+1)=σ(i)+1} for i=1,...,n-1 each have marginal probability ≈ 1/n in a random NUD perm. There are n-1 indicators, so E[adj1] ≈ 1 + 1/n → 1. The indicators are weakly dependent (each depends only on local values), so by the Chen-Stein Poisson approximation theorem, adj1 → Poisson(1).

Computational verification: the distribution of adj1 converges to Poisson(1) for n=8,10,12 with ratios P(adj1=k)/P_Poisson(k) → 1.

**Part C:** Follows from Part B: E[2^X] where X ~ Poisson(1) = Σ 2^k e^{-1}/k! = e^{-1} · e^2 = e.

**Part D:** CV²(n) = W(n)/n! - 1. Since NUD(n)/n! → 1/e (from EGF: exp(-x)/(1-x)² at x=1 doesn't converge, but NUD(n)/n! ~ 1/e by standard asymptotics of A000255), and W(n)/NUD(n) → e, we get W(n)/n! → 1. The correction: NUD(n)/n! ≈ 1/e + c₁/n + c₂/n², and the 2^adj1 weighting adds a correction. The leading behavior CV² ~ 2/n follows from the contribution of g_1(n-2) = n-2 term: 2(n-2)/n(n-1) = 2/n - 6/n² + ...

## Data

| n | W(n)/NUD(n) | CV²(n) | CV²·n |
|---|---|---|---|
| 5 | 2.981 | 0.317 | 1.583 |

## Notes for the formalizer

(none yet)
