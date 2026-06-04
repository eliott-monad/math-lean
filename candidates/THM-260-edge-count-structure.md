---
id: THM-260-edge-count-structure
source: 01-canon/theorems/THM-260-edge-count-structure.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-260: Edge Count Structure Theorem for G_n

**Status:** PROVED (exact formula for T_n; SL formula verified n≤7; parity theorem proved)

**Session:** kind-pasteur-2026-03-22-S20cn

**Statement:**

The meta-graph G_n (isomorphism class flip graph of tournaments on n vertices) has:

1. **Transition orbit count** (exactly computable):

   T_n = (1/n!) Σ_{σ all-odd-cycles} ct(σ) × 2^{p(σ)} × C(f(σ), 2)

   where:
   - Sum is over conjugacy classes of S_n with all odd-length cycles
   - ct(σ) = number of permutations with cycle type σ
   - p(σ) = Σ_{i<j} gcd(c_i, c_j) + Σ_i (c_i - 1)/2
   - f(σ) = number of fixed points (1-cycles)

2. **Edge count decomposition:**

   E(G_n) = (T_n - SL_n - MW_n) / 2

   where:
   - SL_n = self-loop transition orbits (arc flips staying in same class)
   - MW_n = multi-weight correction (multiple arc orbits connecting same pair)

3. **Parity theorem:** T_n - SL_n is always even.

   Proof: The flip involution Φ(T, e) = (T⊕e, e) commutes with S_n and pairs
   cross-transition orbits: if T and T⊕e are in different classes, Φ maps orbit(T,e)
   to orbit(T⊕e, e) ≠ orbit(T,e). So cross-orbits come in pairs.

4. **Self-loop formula** (exact for n ≤ 7):

   SL_n = (self_wt_n + twin_correction_n) / n!

   where:
   - self_wt_n = m × 2^{m-n+2} + NTE(n) = twin pairs + non-twin excess

## Notes for the formalizer

(none yet)
