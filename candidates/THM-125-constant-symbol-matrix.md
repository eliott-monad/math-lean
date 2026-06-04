---
id: THM-125-constant-symbol-matrix
source: 01-canon/theorems/THM-125-constant-symbol-matrix.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-125: Constant Symbol Matrix for Circulant Tournaments

**Status:** PROVED (algebraic proof) + VERIFIED computationally
**Source:** kind-pasteur-2026-03-10-S52
**Related:** HYP-444, HYP-445, HYP-437, HYP-448

---

## Statement

Let C_n^S be any circulant tournament (S ⊂ Z_n with S ∩ (-S) = ∅ and S ∪ (-S) = Z_n \ {0}).
Let M_m(t) be the Tang-Yau symbol matrix (arXiv:2602.04140) for the GLMY path chain complex.

**THEOREM:** M_m(t) is a CONSTANT matrix (independent of t). All entries are polynomials
of degree 0 (only the t^0 = 1 term).

**COROLLARY:** For any circulant tournament C_n^S and any degree m:
  dim(Omega_m^(k)) = dim(Omega_m^(k'))  for ALL k, k' in {0,...,n-1}
(all n eigenspaces of the Z_n-action have identical Omega dimensions)

---

## Proof

The Tang-Yau symbol matrix M_m[J, D](t) is defined as:
  M_m[J, D](t) = sum_{face i of D: D->J, J not in A_{m-1}} (-1)^i * t^{offset_i(D)}

where:
- Face i=0 of D=(d_1,...,d_m): returns fd=(d_2,...,d_m) with offset=d_1
- Face i>0 (inner/last): returns a modified sequence with offset=0

The t-power comes ONLY from face_0 contributions where J = (d_2,...,d_m) is NOT in A_{m-1}.

**Key Lemma:** For any D = (d_1,...,d_m) in A_m, the tail (d_2,...,d_m) is always in A_{m-1}.

**Proof of Key Lemma:**
Let s_0=0, s_1=d_1, s_2=d_1+d_2, ..., s_m=d_1+...+d_m be the partial sums of D.
Since D in A_m, all s_i are distinct mod n.

The partial sums of (d_2,...,d_m) starting from 0 are:

## Notes for the formalizer

(none yet)
