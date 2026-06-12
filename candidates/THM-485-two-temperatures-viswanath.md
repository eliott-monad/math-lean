---
id: THM-485-two-temperatures-viswanath
source: 01-canon/theorems/THM-485-two-temperatures-viswanath.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-485 — The two temperatures of the hard-core transfer operator: Zeckendorf, the tournament H, and Viswanath

**Status:** PROVED (deterministic parts) + VERIFIED (Lyapunov/Monte-Carlo) — claudebox-2026-06-11-S5.
**Provenance:** user dispatch (Viswanath's constant + Zeckendorf + the transfer-spectrum thread).
**Builds on:** THM-326 (H = I(Ω,2)), THM-337 (base-path order-3 recurrence, root 3.38298),
the S720/721 temperature ladder, fibonacci_tiling_galois.out (F_n = I(P_{n−2},1), the
Fibonacci-on-paths identity), tribonacci_base_tournament.out (Zeckendorf in tribonacci base).
**External (cited):** Viswanath 2000 (Math. Comp. 69, the constant 1.13198824…, Lyapunov of
random [[0,1],[±1,1]] products via the Stern–Brocot stationary measure); Embree–Trefethen 1999
(critical β* ≈ 0.70258 for f_n = f_{n−1} ± β f_{n−2}); Lekkerkerker (Zeckendorf summand average).

## Setup

The **hard-core / independence transfer operator** of the path is
I(P_n, x) = I(P_{n−1}, x) + x·I(P_{n−2}, x) (independence polynomial of P_n at activity/fugacity
x). The admissible configurations are 0/1 strings with no two adjacent 1s — the **golden-mean
shift of finite type**, which is exactly the **Zeckendorf numeration** rule (no two consecutive
Fibonacci summands). The same operator is the repo's tournament partition function in the
path case: H = I(Ω, 2) (THM-326). It carries TWO independent temperature axes.

## Statement

**(1) Deterministic fugacity temperature (annealed).** I(P_n, x) grows like
λ(x) = (1 + √(1+4x))/2 — the dominant eigenvalue of [[1, x],[1, 0]]. Three landmarks on one
operator (verified exact, I_40/I_39):
- x = 1: λ = φ = 1.61803… — **Zeckendorf / golden-mean SFT**, topological entropy log φ
  (admissible length-n strings = F_{n+2}; Lekkerkerker average summand density 1/(φ²+1)).
- x = 2: λ = 2 — the repo's **H = I(Ω,2)**, Jacobsthal J_n = (2^{n+1}+(−1)^n)/3 = 1,3,5,11,21,…
- general x: the S720 "fugacity temperature." x = 1 (Zeckendorf) and x = 2 (tournament H) are
  two readings of ONE transfer matrix at two activities.

**(2) Quenched sign-disorder temperature.** Randomize the recurrence SIGNS:
f_n = ±f_{n−1} ± x·f_{n−2} (i.i.d. fair signs). The growth rate drops from the eigenvalue λ(x)
to the top **Lyapunov exponent** of the random matrix cocycle. At x = 1 this is exactly
**Viswanath's constant 1.13198824…** (verified: Monte-Carlo 1.1321, 4 i.i.d. ×1.5M-step runs).
Disorder strictly LOWERS growth: φ = 1.618 (ordered) → 1.132 (disordered). NEW — the disordered
("Viswanath") constants of the repo's transfer families (verified Lyapunov, leading
geometry/coefficient frozen, signs randomized):

| family | deterministic root | disordered (Lyapunov) |

## Notes for the formalizer

(none yet)
