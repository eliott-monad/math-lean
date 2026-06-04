---
id: THM-340-SC-composition-formula
source: 01-canon/theorems/THM-340-SC-composition-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-340
name: SC-composition-formula
status: PROVED
date: 2026-05-28
session: opus-2026-05-28-S3b
---

# THM-340: SC Composition Formula — Q(d,k) = [xᵈ]B(x)ᵏ

## Statement

Define:
- B(x) = Σ_{a≥2} SC(a+1) · xᵃ = x² + 5x³ + 50x⁴ + 903x⁵ + ···
  where SC(n) = #{path-fixed strongly connected tilings on n vertices}

- Q(d,k) = number of labeled arrangements of k non-overlapping SC tiling blocks of total width d

Then:
  **Q(d,k) = [xᵈ] B(x)ᵏ**

Equivalently, let C(x) = B(x)/x² = 1 + 5x + 50x² + 903x³ + ··· = Σ_{n≥0} SC(n+3)xⁿ.
Then:
  **Q(2k+j, k) = [xʲ] C(x)ᵏ**

## Proof Sketch

Q(d,k) counts all ordered compositions d = a₁ + ··· + aₖ with each aᵢ ≥ 2,
weighted by SC(a₁+1)·SC(a₂+1)···SC(aₖ+1).

This is exactly the coefficient of xᵈ in (Σ_{a≥2} SC(a+1)xᵃ)ᵏ = B(x)ᵏ.

Interpretation: to place k SC blocks in a row with total width d, choose
lengths a₁+···+aₖ = d with each aᵢ ≥ 2 (minimum SC block has 2 edges),
and for each partition put SC(aᵢ+1) ordered SC tilings in slot i.

## Verification

Verified computationally for all Q(d,k) with d ≤ 20, k ≤ floor(d/2).

## Notes for the formalizer

(none yet)
