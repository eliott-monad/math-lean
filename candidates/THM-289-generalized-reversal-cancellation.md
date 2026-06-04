---
id: THM-289-generalized-reversal-cancellation
source: 01-canon/theorems/THM-289-generalized-reversal-cancellation.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-289: Generalized Reversal Cancellation Theorem

**Status:** PROVED (algebraic, for all n)
**Filed by:** opus-2026-04-04-S3
**Depends on:** OCF, THM-287, THM-288

## Statement

For any independent set I = {C₁,...,C_k} of vertex-disjoint directed odd cycles, where
every cycle uses ONLY tile arcs (zero base-path arcs), the total contribution to any
multilinear coefficient at the top combined degree is zero:

  Σ_{all 2^k orientation combinations} Π_{i=1}^{k} (-1)^{f_i} = 0

where f_i = number of forward tile arcs in cycle C_i, and the sum ranges over
all assignments of each cycle to its original or reversed orientation.

## Proof

Each cycle C_i has length L_i (odd). The reversal C_i^rev has f_i^rev = L_i - f_i
forward arcs. Since L_i is odd:

  (-1)^{f_i} + (-1)^{L_i - f_i} = (-1)^{f_i} (1 + (-1)^{L_i}) = (-1)^{f_i} · 0 = 0

For the full independent set with k cycles, the 2^k orientation combinations form
a product:

  Σ_{ε₁,...,εₖ ∈ {0,1}} Π_{i=1}^{k} (-1)^{ε_i(L_i-2f_i)+f_i}
  = Π_{i=1}^{k} [(-1)^{f_i} + (-1)^{L_i-f_i}]
  = Π_{i=1}^{k} 0 = 0

since the sum factorizes over the independent cycles (vertex-disjoint ⟹ tile-disjoint). ∎

## Consequence: The Degree Cap

**Corollary (Degree Cap Theorem):** The maximum degree of H(t) as a multilinear polynomial
is exactly 2·⌊(n-1)/2⌋.

**Proof:**

## Notes for the formalizer

(none yet)
