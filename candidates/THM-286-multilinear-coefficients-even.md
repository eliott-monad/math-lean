---
id: THM-286-multilinear-coefficients-even
source: 01-canon/theorems/THM-286-multilinear-coefficients-even.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-286: All Multilinear Coefficients of H Are Even

**Status:** PROVED (algebraic, for all n)
**Filed by:** opus-2026-04-04-S1
**Depends on:** Rédei's theorem (H(T) is always odd)

## Statement

Let H(t₁,...,tₘ) be the multilinear polynomial expressing the Hamiltonian path count as a function of tile bits t_i ∈ {0,1}. Write:

  H(t) = Σ_{S ⊆ [m]} c_S · Π_{i∈S} tᵢ

Then c_∅ = 1 (odd) and c_S is even for every non-empty S ⊆ [m].

Equivalently: **H(t) ≡ 1 (mod 2) for all t ∈ {0,1}^m.** This is Rédei's theorem restated in the tiling model.

## Proof

By induction on |S|.

**Base case |S|=1:** Let S = {i}. Setting all tiles to 0 except tile i:
  H(eᵢ) = c_∅ + c_{i} = 1 + c_{i}

Since H(eᵢ) is always odd (Rédei), c_{i} = H(eᵢ) - 1 is even. ∎

**Inductive step:** Assume c_T is even for all non-empty T with |T| < |S|.
Setting t = indicator vector of S:
  H(1_S) = Σ_{T ⊆ S} c_T = c_∅ + Σ_{∅ ≠ T ⊆ S} c_T = 1 + Σ_{∅ ≠ T ⊊ S} c_T + c_S

By induction, each c_T with ∅ ≠ T ⊊ S is even. So Σ_{∅ ≠ T ⊊ S} c_T is even.
Since H(1_S) is odd (Rédei), we need 1 + (even) + c_S to be odd, hence c_S is even. ∎

## Additional Computational Findings

The **minimum 2-adic valuation** of c_S (for |S| ≥ 1) is exactly 1 at all tested n (3-7). That is, while every coefficient is divisible by 2, NOT every coefficient is divisible by 4.

The **maximum-degree coefficients** have a different structure at odd vs even n:
- At odd n = 3, 5, 7: max-degree coefficients are ALL ±2
- At even n = 6: max-degree coefficients include ±4

## Notes for the formalizer

(none yet)
