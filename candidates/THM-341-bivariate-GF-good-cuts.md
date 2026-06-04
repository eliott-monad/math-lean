---
id: THM-341-bivariate-GF-good-cuts
source: 01-canon/theorems/THM-341-bivariate-GF-good-cuts.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-341
name: bivariate-GF-good-cuts
status: PROVED
date: 2026-05-28
session: opus-2026-05-28-S3b
---

# THM-341: Bivariate Generating Function for Good-Cuts Distribution

## Statement

Define:
- B(x) = Σ_{a≥2} SC(a+1) xᵃ  (the SC block generating function)
- T(x,y) = generating function for tilings by vertex count and good-cut count

Then the contribution from tilings with d ≥ 2 good cuts is:

  **F(x,y) = x·B(xy) / (1 − x − x·B(xy))**

where [xⁿ yᵈ] F(x,y) = #{tilings of n-vertex staircase with exactly d good cuts}, for d ≥ 2.

## Full Distribution

For any n-vertex tournament tiling:
- d=0: exactly 1 tiling (the transitive tiling, all tiles downward)
- d=1: exactly 0 tilings (IMPOSSIBLE — any tile spans ≥2 cuts, see THM-336)
- d≥2: given by [xⁿ yᵈ] F(x,y) above

## Proof

By THM-340, exactly-d-good(n) = Σ_{k=1}^{⌊d/2⌋} Q(d,k)·C(n−d, k) for d ≥ 2.

The GF in x for fixed d is:
  Σ_n exactly-d-good(n) xⁿ = Σ_k Q(d,k) x^{d+k}/(1−x)^{k+1}

Summing over d≥2 and weighting by yᵈ, using Q(d,k) = [xᵈ]B(x)ᵏ:

  F(x,y) = Σ_{k≥1} (1/(1−x))^{k+1} xᵏ B(xy)ᵏ
          = (1/(1−x)) · xB(xy)/(1−x) / (1 − xB(xy)/(1−x))

## Notes for the formalizer

(none yet)
