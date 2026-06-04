---
id: THM-163-H-walsh-hadamard-structure
source: 01-canon/theorems/THM-163-H-walsh-hadamard-structure.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-163: H Walsh-Hadamard Fourier Structure

**Status:** VERIFIED (n=3 through n=6, exhaustive)
**Session:** kind-pasteur-2026-03-13-S61

## Statement

Let T be a tournament on n vertices with skew-symmetric encoding sigma in {-1,+1}^m (m = C(n,2)). Define the Walsh-Hadamard expansion:

H(sigma) = sum_{S subset [m]} hat(H)(S) * prod_{i in S} sigma_i

Then:

### 1. Even-Degree Vanishing

hat(H)(S) = 0 for all |S| odd.

**Proof:** H(T) = H(T^op) (path reversal bijection). T^op corresponds to sigma -> -sigma, which multiplies hat(H)(S) by (-1)^{|S|}. Invariance forces odd-degree terms to zero.

### 2. Degree-2 Coefficient Formula

For edges e_1 = (a,b) and e_2 = (c,d) sharing exactly one vertex v:

hat(H)({e_1, e_2}) = (-1)^{pos_1 + pos_2 + 1} * (n-2)!/2^{n-2}

where pos_i = 0 if v is the smaller endpoint of edge i, 1 if larger.

For edges sharing NO vertex: hat(H)({e_1, e_2}) = 0.

**Verified exhaustively at n = 3, 4, 5, 6.**

### 3. Vertex Balance Function Z_v

Define Z_v = sum of signed products of sigma over edge pairs sharing vertex v:

Z_v = sum_{a<v<b} sigma_{av} * sigma_{vb} - sum_{a<b<v} sigma_{av} * sigma_{bv} - sum_{v<a<b} sigma_{va} * sigma_{vb}

Then Z_v depends ONLY on the score s_v = out-degree of v:

**Z_v = -2(s_v - (n-1)/2)^2 + (n-1)/2**

## Notes for the formalizer

(none yet)
