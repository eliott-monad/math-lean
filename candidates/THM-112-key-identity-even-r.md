---
id: THM-112-key-identity-even-r
source: 01-canon/theorems/THM-112-key-identity-even-r.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-112: Key Identity and Even r-Powers of the Transfer Matrix

**Status:** PROVED (inductive proof, computationally verified m=2..6)
**Added:** opus-2026-03-06-S25
**Proved by:** opus-2026-03-06-S25

## Statement

**Theorem (Key Identity).** Let W be a vertex set with |W| = m >= 2 in a c-tournament with edge weights t(i,j) = r + s_{ij}, s_{ij} = -s_{ji}. For any b in W,

    B_b(W) + (-1)^m E_b(W) = 2r * col_sum_W(b)

where:
- B_b(W) = sum of Hamiltonian path weights starting at b through W
- E_b(W) = sum of Hamiltonian path weights ending at b through W
- col_sum_W(b) = sum_{a != b} M_W[a,b], the column sum of the transfer matrix

## Corollaries

**Corollary 1 (Sigma Identity).** Summing the Key Identity over all b in W:

    T(W) * [1 + (-1)^m] = 2r * Sigma(W)

where T(W) = total Hamiltonian path weight, Sigma(W) = sum_{a!=b} M[a,b].
- Even m: T(W) = r * Sigma(W)
- Odd m: Sigma(W) = 0

**Corollary 2 (Even r-powers).** Every entry M[a,b] of the transfer matrix contains only even powers of r.

**Corollary 3 (Symmetry).** M[a,b] = M[b,a] for all a, b.

## Proof

By strong induction on m = |W|.

### Base case (m = 2)

W = {a, b}. Then M[a,b] = 1 (trivial paths), col_sum(b) = 1.
- B_b(W) = t(b,a) = r - s_{ab}
- E_b(W) = t(a,b) = r + s_{ab}

## Notes for the formalizer

(none yet)
