---
id: THM-292-sum-H-formula
source: 01-canon/theorems/THM-292-sum-H-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-292: Exact Formula for Σ H — Total Hamiltonian Path Count Over All Tilings

**Status:** PROVED (algebraic, verified n=3,...,7 exhaustively, n=8,9,10 via formula)
**Filed by:** opus-2026-04-04-S5
**Depends on:** THM-284, OCF, tiling model

## Statement

For a tournament on n vertices with fixed base path, the total Hamiltonian path count
summed over all 2^m tilings (m = C(n-1,2)) is:

  **Σ_t H(T(t)) = Σ_{σ succession-free} 2^{m - (n-1-bp(σ))}**

where:
- The sum is over all succession-free permutations σ of {0,...,n-1}
  (OEIS A000255: permutations with no i such that σ(i+1) = σ(i)+1)
- bp(σ) = number of base-path arcs used (descents by exactly 1)
- m = C(n-1, 2)

Equivalently: Σ H = Σ_{bp=0}^{n-1} N(n, bp) · 2^{C(n-1,2)-n+1+bp}

where N(n, bp) = number of succession-free permutations of [n] with exactly bp
descents-by-1.

## Proof

Each labeled permutation σ = (v₁,...,v_n) is a valid Hamiltonian path in EXACTLY those
tournaments where every arc v_i → v_{i+1} is present. Three cases:
1. **Base-path arc** (v_i = v_{i+1}+1): always present. No tile constraint.
2. **Tile arc** (|v_i - v_{i+1}| ≥ 2): constrains one tile to a specific direction.
3. **Reverse base-path arc** (v_{i+1} = v_i+1): NEVER present in any tiling.

If σ has any reverse base-path arc, it's valid in ZERO tilings.
Otherwise, σ has bp base-path arcs and (n-1-bp) tile arcs, each constraining a
DISTINCT tile. The remaining m - (n-1-bp) tiles are free (2 choices each).

So: |{tilings where σ is HP}| = 2^{m-(n-1-bp)} if σ is succession-free, 0 otherwise.

Summing: Σ_t H(T(t)) = Σ_{succession-free σ} 2^{m-n+1+bp(σ)}. ∎

## Notes for the formalizer

(none yet)
