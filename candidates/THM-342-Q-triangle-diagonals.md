---
id: THM-342-Q-triangle-diagonals
source: 01-canon/theorems/THM-342-Q-triangle-diagonals.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-342
name: Q-triangle-diagonals
status: PROVED
date: 2026-05-28
session: opus-2026-05-28-S3b
---

# THM-342: Q-Triangle Diagonal Formulas

## Setting

The Q-triangle has Q(d,k) = [xᵈ]B(x)ᵏ, the k-th power convolution of B(x) = Σ_{a≥2} SC(a+1)xᵃ.
The "j-th diagonal" consists of all Q(2k+j, k) for k = 1, 2, 3, …

## Main Theorem

Let C(x) = B(x)/x² = Σ_{n≥0} SC(n+3)xⁿ = 1 + 5x + 50x² + 903x³ + ···

Then: **Q(2k+j, k) = [xʲ] C(x)ᵏ**

All diagonal formulas follow from expanding C(x)ᵏ:

### Diagonal j=0 (main diagonal):
  Q(2k, k) = 1 for all k ≥ 1

  Proof: [x⁰]C(x)ᵏ = C(0)ᵏ = 1ᵏ = 1.
  Combinatorially: the only composition of 2k into k parts each = 2 is (2,2,…,2), with SC(3)ᵏ = 1.

### Diagonal j=1:
  Q(2k+1, k) = 5k for all k ≥ 1

  Proof: [x¹]C(x)ᵏ = k·[x¹]C(x)·C(0)^{k-1} = k·5·1 = 5k.
  Combinatorially: choose which of the k blocks gets length 3 (= SC(4)=5), rest get length 2.

### Diagonal j=2:
  Q(2k+2, k) = 25k(k+3)/2 for all k ≥ 1

  = 50k + 25·C(k,2)

## Notes for the formalizer

(none yet)
