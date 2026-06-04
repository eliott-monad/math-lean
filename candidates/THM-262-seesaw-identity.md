---
id: THM-262-seesaw-identity
source: 01-canon/theorems/THM-262-seesaw-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-262: Seesaw Identity for Tournament Path Homology

**Status:** PROVED (algebraic identity). The seesaw conjecture β₁·β₃=0 is REDUCED to a rank bound but NOT fully proved.
**Filed by:** kind-pasteur-2026-03-25-S28
**Dependencies:** THM-108 (β₂=0 for all tournaments)
**Devil's advocate review (S29):** Identity derivation is CORRECT. Claims about "completing the proof" were premature — corrected below.

## Statement

For any tournament T on n ≥ 3 vertices:

**β₁(T) + β₃(T) = S(T) - dim(im ∂₄)**

where:
- S(T) = dim(ker ∂₁) + dim(Ω₃) - dim(Ω₂)
- dim(ker ∂₁) = C(n,2) - n + 1 (constant for all tournaments on n vertices)
- dim(Ω₂), dim(Ω₃) depend on the specific tournament T
- im ∂₄ = image of the boundary map ∂₄: Ω₄ → Ω₃

## Proof

From the GLMY chain complex:
```
Ω₄ →^{∂₄} Ω₃ →^{∂₃} Ω₂ →^{∂₂} Ω₁ →^{∂₁} Ω₀
```

**Step 1.** β₂ = 0 (THM-108) gives exactness at Ω₂: ker(∂₂) = im(∂₃).
Therefore: dim(Ω₂) - rank(∂₂) = rank(∂₃).

**Step 2.** β₁ = dim(ker ∂₁) - rank(∂₂), so rank(∂₂) = dim(ker ∂₁) - β₁.

**Step 3.** From Step 1: rank(∂₃) = dim(Ω₂) - rank(∂₂) = dim(Ω₂) - dim(ker ∂₁) + β₁.

**Step 4.** ker(∂₃) = dim(Ω₃) - rank(∂₃) = dim(Ω₃) - dim(Ω₂) + dim(ker ∂₁) - β₁.

**Step 5.** β₃ = ker(∂₃) - dim(im ∂₄) = dim(Ω₃) - dim(Ω₂) + dim(ker ∂₁) - β₁ - dim(im ∂₄).

**Step 6.** Rearranging: β₁ + β₃ = dim(ker ∂₁) + dim(Ω₃) - dim(Ω₂) - dim(im ∂₄) = S - dim(im ∂₄). QED.

**Note:** rank(∂₂) cancels in Steps 2-5 BECAUSE β₂ = 0. This is the essential role of THM-108.

## Notes for the formalizer

(none yet)
