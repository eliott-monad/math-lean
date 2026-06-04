---
id: THM-293-W-equals-succession-GF
source: 01-canon/theorems/THM-293-W-equals-succession-GF.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-293: W(n) = Succession-Free Generating Function at x=2

**Status:** PROVED (algebraic, verified n=3,...,12)
**Filed by:** opus-2026-04-04-S8
**Depends on:** THM-292 (Σ H formula), W(n) from S90

## Statement

The W(n) sequence (discovered in opus-2026-03-15-S90 via transfer matrices):
  **W(n) = 1, 2, 8, 32, 158, 928, 6350, 49752, 439670, 4327904, 46963358, 556953448, ...**

equals the generating function of succession-free permutations by descent-by-1 count,
evaluated at x=2:

  **W(n) = Σ_{bp≥0} N(n, bp) · 2^{bp}**

where N(n, bp) = number of permutations of {0,...,n-1} with zero ascending-by-1 steps
and exactly bp descending-by-1 steps.

## The Master Formula

  **Σ_t H(T(t)) = 2^{C(n-1,2) - n + 1} · W(n)**

The total Hamiltonian path count over all 2^{C(n-1,2)} tilings at n equals a
power of 2 times W(n).

Equivalently: **E[H] = W(n) / 2^{n-1}** (mean HP count = W(n) divided by 2^{n-1}).

## Proof

From THM-292:
  Σ H = Σ_{succession-free σ} 2^{m - (n-1-bp(σ))} = 2^{m-n+1} · Σ_{bp} N(n,bp) · 2^{bp}
      = 2^{m-n+1} · W(n)

where m = C(n-1,2). ∎

## Extended Values

| n | W(n) | Σ H | E[H] |
|---|------|-----|------|

## Notes for the formalizer

(none yet)
