---
id: paley_path_homology_theory
source: 05-knowledge/results/paley_path_homology_theory.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Paley Tournament Path Homology — Theoretical Summary

## Sessions: S38, S39, S40

### Setup
For p ≡ 3 mod 4 prime, the Paley tournament P_p is the circulant tournament
on Z_p with connection set S = QR(p) (quadratic residues).

Properties:
- |S| = (p-1)/2
- S ∩ (-S) = ∅ (since -1 ∈ QNR when p ≡ 3 mod 4)
- P_p is self-complementary (complement has S' = QNR)
- P_p is vertex-transitive (circulant shift τ: v → v+1)

### Computational Results

| p | QR | β | Geometric type | χ |
|---|-----|---|---------------|---|
| 3 | {1} | (1,1,0) | S^1 (circle) | 0 |
| 7 | {1,2,4} | (1,0,0,0,6,0) | ∨^6 S^4 | 7 |
| 11 | {1,3,4,5,9} | (1,0,0,0,0,0,0,0,10,0,0) | ∨^{10} S^8 | 11 |

### Per-Eigenspace Decomposition

The cyclic shift τ decomposes the chain complex into p eigenspaces
indexed by k = 0,...,p-1 with eigenvalue λ_k = ω^k (ω = e^{2πi/p}).

**P_7 (COMPLETE):**
- k=0: Ω dims = [1,3,6,9,9,6,3], β = (1,0,0,0,0,0,0)
- k=1,...,6: ALL have Ω dims = [1,3,6,9,9,6,3], β = (0,0,0,0,1,0,0)
- Total: β = (1,0,0,0,6,0,0), χ = 7

**P_11 (COMPLETE):**
- All eigenspaces k=1,...,10 have the SAME Ω dims (proved theoretically)
- Ω dims (k≠0): [1, 5, 20, 70, 205, 460, 700, 690, 450, 180, 30]
- Inner sequence [5,20,70,205,460,700,690,450,180,30] is NOT palindromic
  (460 ≠ 700), unlike P_7's [3,6,9,9,6,3]
- Ranks: [1, 4, 16, 54, 151, 309, 391, 299, 150, 30]
- β per eigenspace: [0,0,0,0,0,0,0,0,1,0,0] — concentrated at d=8=p-3
- Total: β_8 = 10 = p-1 (from 10 non-trivial eigenspaces)

## Notes for the formalizer

(none yet)
