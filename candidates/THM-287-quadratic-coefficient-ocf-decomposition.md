---
id: THM-287-quadratic-coefficient-ocf-decomposition
source: 01-canon/theorems/THM-287-quadratic-coefficient-ocf-decomposition.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-287: Quadratic Multilinear Coefficient via OCF Decomposition

**Status:** PROVED (algebraic for all n, verified n=4,5,6)
**Filed by:** opus-2026-04-04-S2
**Depends on:** OCF (H=I(Ω,2)), THM-286

## Statement

The quadratic multilinear coefficient c_{ij} in H(t₁,...,tₘ) = Σ_S c_S Π_{k∈S} t_k
decomposes as:

  **c_{ij} = 2·A(i,j) + 4·B(i,j)**

where:
- A(i,j) = Σ_C [coeff of t_i·t_j in χ_C(t)]  (sum over all directed odd cycles C)
- B(i,j) = Σ_{(C₁,C₂) vertex-disjoint} [coeff of t_i in χ_{C₁}] · [coeff of t_j in χ_{C₂}]

No higher independent set sizes (|I| ≥ 3) contribute to the quadratic coefficient.

## Proof

By OCF: H(t) = Σ_{I independent in Ω(t)} 2^|I| = Σ_{I vertex-disjoint odd cycles} 2^|I| · Π_{C∈I} χ_C(t)

where χ_C(t) is the indicator that cycle C exists in tournament T(t).

**Key lemma:** χ_C(0,...,0) = 0 for every directed odd cycle C.

*Proof of lemma:* T(0,...,0) is the transitive tournament (all tiles forward, all arcs go from higher to lower). The transitive tournament has no directed cycles. ∎

**Consequence:** The constant term of every χ_C is 0. Therefore every cycle indicator polynomial starts at degree ≥ 1.

**For independent sets of size |I| = k:** The product Π_{C∈I} χ_C has minimum degree ≥ k (each factor contributes degree ≥ 1).

For the quadratic coefficient c_{ij} (degree 2), we need contributions from terms of degree exactly 2. This requires k ≤ 2:
- k = 0: contributes only to degree 0 (constant = 1). No.
- k = 1: single cycle C can contribute if χ_C has a t_i·t_j term. Weight: 2¹ = 2.
- k = 2: pair (C₁, C₂) contributes if χ_{C₁} has t_i and χ_{C₂} has t_j (or vice versa). Weight: 2² = 4. (For χ_{C₁} to have t_i·t_j, we'd need C₂ to contribute constant 0. So only the split works.)
- k ≥ 3: each of ≥ 3 factors has degree ≥ 1, so product has degree ≥ 3 > 2. **No contribution.** ∎

## Corollaries

## Notes for the formalizer

(none yet)
