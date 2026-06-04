---
id: h21_case62_structural_proof
source: 05-knowledge/results/h21_case62_structural_proof.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# (6,2) IMPOSSIBILITY — STRUCTURAL PROOF

**opus-2026-03-14-S71e**

## Claim: (α₁=6, α₂=2) is impossible for ALL n.

### Setup
H = 1 + 2α₁ + 4α₂ = 21 requires T = α₁ + 2α₂ = 10.
The decomposition (α₁=6, α₂=2) has T = 6 + 4 = 10. ✓

α₁ = Σ d(VS) over cycle vertex sets.
α₂ = Σ d(VS_i)·d(VS_j) over disjoint pairs.

### Case A: Some disjoint pair involves a VS with |VS| ≥ 5. **PROVED IMPOSSIBLE.**

Let (VS_big, VS_small) be a disjoint pair with |VS_big| ≥ 5, |VS_small| ≥ 3.

By HYP-1142: VS_big (which has a Hamiltonian cycle) contains ≥3 internal cyclic triples.
Each internal triple ⊂ VS_big, so it's disjoint from VS_small.
Each contributes d(triple)·d(VS_small) ≥ 1·1 = 1 to α₂.

α₂ ≥ d(VS_big)·d(VS_small) + 3·d(VS_small) = d(VS_small)·(d(VS_big) + 3) ≥ 1·(1+3) = 4 > 2.

**CONTRADICTION. Case A is impossible for all n.** ∎

### Case B: All disjoint pairs are between 3-cycles (|VS|=3, d=1).

α₂ = #{disjoint 3-cycle pairs}. Need α₂ = exactly 2.

#### Subcase B1: A 5-VS exists (not in any disjoint pair). **PROVED IMPOSSIBLE.**

The 2 disjoint pairs use 4 triples (A,B,C,D) contributing 4 to α₁.
The 5-VS contributes d(5-VS) ≥ 1 to α₁.
HYP-1142: the 5-VS has ≥3 internal cyclic triples.

Even if one internal triple coincides with A (a member of a disjoint pair):
- ≥2 NEW internal triples, each contributing 1 to α₁.
- Total: α₁ ≥ 4 + 1 + 2 = 7 > 6.

**CONTRADICTION. Subcase B1 is impossible for all n.** ∎

## Notes for the formalizer

(none yet)
