---
id: THM-120-pfaffian-betti-separation
source: 01-canon/theorems/THM-120-pfaffian-betti-separation.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-120: Pfaffian-Betti Separation at n=6

**Status:** PROVED (exhaustive computation, 32768 tournaments)
**Proved by:** kind-pasteur-2026-03-08-S40 (exhaustive verification), opus-2026-03-07-S46e (initial discovery)

## Statement

For any tournament T on 6 vertices with skew-adjacency matrix S = A - A^T:

1. If β₁(T) > 0 (C-phase), then |Pf(S)| ∈ {1, 3}
2. If β₃(T) > 0 (S-phase), then |Pf(S)| ∈ {7, 9}
3. The sets {1,3} and {7,9} are DISJOINT, so |Pf(S)| perfectly separates C from S

Equivalently, using skew eigenvalues ±ia, ±ib, ±ic (a ≤ b ≤ c, a²+b²+c²=15):

4. If β₁(T) > 0, then spectral gap c - a ≥ 2.922
5. If β₃(T) > 0, then spectral gap c - a ≤ 1.646
6. The gap ranges [2.922, 3.464] and [1.268, 1.646] are disjoint

## Key Data

There are exactly 5 skew eigenvalue triples for n=6 tournaments (on the sphere a²+b²+c²=15):

| (a, b, c) | |Pf|=abc | gap | Achievable phases |
|---|---|---|---|
| (0.146, 2.103, 3.249) | 1 | 3.10 | P, C |
| (0.268, 1.000, 3.732) | 1 | 3.46 | P, C |
| (0.505, 1.732, 3.427) | 3 | 2.92 | P, C |
| (0.727, 2.236, 3.078) | 5 | 2.35 | P only |
| (1.000, 2.646, 2.646) | 7 | 1.65 | P, S |
| (1.732, 1.732, 3.000) | 9 | 1.27 | P, S |

|Pf| = 5 is a **phase boundary** — only P-phase (contractible) appears there.

## Phase Distribution (n=6, exhaustive)

- P (contractible): 27648 (84.4%)
- C (β₁>0, circle-like): 4800 (14.6%)
- S (β₃>0, sphere-like): 320 (0.98%)

## Notes for the formalizer

(none yet)
