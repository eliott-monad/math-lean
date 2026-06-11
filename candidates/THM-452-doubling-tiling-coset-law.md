---
id: THM-452-doubling-tiling-coset-law
source: 01-canon/theorems/THM-452-doubling-tiling-coset-law.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-452 — The Tiling Coset Law: D(T)'s tiling has CONSTANT grid-symmetry defect; grid transpose implements op; the tower's path is the Gray code

**Status:** PROVED (block-transform derivation) + VERIFIED 100% (1098 framed + 1096 labeled
cases n=3..6; tower orders 2..16 exact). The original "blue conjecture" version is REFUTED
(see MISTAKE-065). Adversarially re-verified (`verify_C_tiling_kps1.out`).
**Source:** kind-pasteur-2026-06-09-S1 (branch C + verifier). Resolves HYP-2335.
**Related:** THM-447(5), blue/black strict definitions (CLAUDE.md), grid-sym fraction formula,
THM-024 (SC ⟹ involutive anti-aut).

## Setup

Frame D(T) by its canonical Hamiltonian path (THM-447(5)): relabel u_i ↦ n+i, v_j' ↦ n+1−j
(path position t gets label 2n−t). Tiles of the 2n-staircase split into: copy-1 block (labels
n+1..2n), copy-2 block (labels 1..n), cross block (n²−1 tiles, containing the n−1 twin tiles
on the anti-diagonal X+Y = 2n+1). Let σ = grid-symmetry involution (X,Y) ↦ (2n+1−Y, 2n+1−X),
x = tiling vector of T in its base frame.

## (1) The block transform (verified 100%)

```
copy-1 block:  t(n+i, n+j)   = x(i,j)            identity copy
copy-2 block:  t(X, Y)       = x(σ_n(X,Y))       grid transpose, NO negation
cross block:   t(n+i, n+1−j) = A[i][j]  (i≠j)    T's full ordered arc matrix
twin tiles:    ≡ 1                                all-ones anti-diagonal (the hypotenuse)
```
The T^op negation in copy 2 is EXACTLY absorbed by traversing the reversed path (MISTAKE-065:
"grid-transposed negated" was wrong). The negated Sylvester copy lives in the CROSS block:
σ-partner tiles (i,j) ↔ (j,i) carry the complementary bits A[i][j] vs A[j][i]. Net tile-level
schema = three positive copies + one negated = [[H,H],[H,−H]]. ✓

## (2) The coset law (the repaired blue conjecture)

The canonical tiling of D(T) is grid-symmetric for NO tournament (0/2194 tested — the blue
conjecture fails uniformly). Instead, the defect is CONSTANT, independent of T:
```
σ(t(D(T))) = t(D(T)) XOR c_n,     c_n = indicator of the n(n−1) off-twin cross tiles
```
Diagonal blocks are σ-symmetric (σ swaps copy-1 ↔ copy-2 bits, equal by (1)); the cross block
is σ-ANTI-symmetric. So x ↦ t(D(x)) is an injective GF(2)-affine map of rank C(n−1,2) whose
image is a section of the SINGLE fixed coset (blue subspace) + c_n. Dim(blue subspace at 2n) =

## Notes for the formalizer

(none yet)
