---
id: THM-145-spectral-topological-bridge
source: 01-canon/theorems/THM-145-spectral-topological-bridge.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-145: Spectral-Topological Bridge (Conjecture)

**Status:** CONJECTURE (verified p=7, p=11, p=13 exhaustive)
**Author:** opus-2026-03-12-S69
**Dependencies:** THM-125 (constant symbol matrix), HYP-562 (integer ESF)

## Statement

For a circulant tournament C_p^S on prime p vertices, define:
- Q_k = |S_hat(k)|² (Fourier magnitude squared, k=1,...,m where m=(p-1)/2)
- e_j = e_j(Q_1,...,Q_m) = j-th elementary symmetric function of Q_k
- Ω_m = per-eigenspace dimension of the m-th omega space (GLMY path complex)

**Claim:** The tuple (e_2, e_3, ..., e_m) UNIQUELY DETERMINES the entire Ω profile
(Ω_0, Ω_1, ..., Ω_{p-1}), and hence all topological invariants (Betti numbers,
Euler characteristic).

Note: e_0 = 1, e_1 = m(p-m)/2 are universal (same for all S).

## Verified Data

### p = 7 (exhaustive, 8 orientations, 2 orbits):
| (e_2, e_3) | Ω profile | chi_per |
|-------------|-----------|---------|
| (5, 1) | [1,3,6,11,14,9,2] | 0 |
| (12, 8) | [1,3,6,9,9,6,3] | 1 |

6 orientations map to (5,1) and 2 to (12,8). Each gives unique Ω.

### p = 11 (exhaustive, 32 orientations, 4 orbits):
| (e_2, e_3, e_4, e_5) | Ω profile | chi_per |
|-----------------------|-----------|---------|
| (35,28,9,1) | [1,5,20,74,224,522,926,1222,1115,611,148] | 0 |
| (68,127,97,23) | [1,5,20,70,200,439,711,827,648,301,64] | 2 |
| (79,171,130,23) | [1,5,20,70,201,430,620,596,384,151,26] | 0 |
| (90,270,405,243) | [1,5,20,70,205,460,700,690,450,180,30] | 1 |

Each e_j pattern uniquely determines Ω.

### p = 13 (exhaustive, 64 orientations, 6 orbits):

## Notes for the formalizer

(none yet)
