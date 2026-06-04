---
id: THM-288-max-degree-from-hamiltonian-cycles
source: 01-canon/theorems/THM-288-max-degree-from-hamiltonian-cycles.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-288: Maximum-Degree Multilinear Coefficients and the Reversal Cancellation

**Status:** PROVED (algebraic + verified n=5,6,7)
**Filed by:** opus-2026-04-04-S2
**Depends on:** THM-287, OCF

## Statement A (Max-degree coefficients at odd n)

At odd n, all maximum-degree (d_max = n-1) multilinear coefficients of H(t) are ±2.
They come exclusively from single Hamiltonian cycles (n-cycles) that use exactly
one base-path arc.

## Statement B (Reversal Cancellation Theorem)

For any odd integer L and any L-element tile subset S: the sum

  Σ_{C: directed L-cycle using exactly tiles S, no base-path arcs} (-1)^{f(C)} = 0

where f(C) = number of forward-direction tile arcs in C.

In particular: degree-L contributions from all-tile-arc L-cycles vanish when L is odd.

## Proof of Statement B

**The Reversal Involution:** For any directed cycle C = (v₀, v₁, ..., v_{L-1}),
define C^rev = (v₀, v_{L-1}, v_{L-2}, ..., v₁). This reverses the traversal order.

If C uses tile (x,y) in the forward direction (x-1 → y-1), then C^rev uses it
in the backward direction (y-1 → x-1). So:

  f(C^rev) = b(C) = L - f(C)

Since L is odd:

  (-1)^{f(C^rev)} = (-1)^{L-f(C)} = (-1)^L · (-1)^{-f(C)} = (-1) · (-1)^f = -(-1)^{f(C)}

Therefore each pair (C, C^rev) contributes:

  (-1)^{f(C)} + (-1)^{f(C^rev)} = (-1)^{f(C)} - (-1)^{f(C)} = 0

## Notes for the formalizer

(none yet)
