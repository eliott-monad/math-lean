---
id: THM-329-a038375-new-terms
source: 01-canon/theorems/THM-329-a038375-new-terms.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-329
title: New Terms of A038375 (Max Hamiltonian Paths in Tournament)
status: LOWER BOUNDS (a(12) strongly believed exact; a(13) not confirmed)
session: opus-2026-05-27-S6
tags: [A038375, hamiltonian-paths, tournaments, computational]
related: [THM-326, THM-327, THM-328]
---

## Statement

A038375 = maximum number of Hamiltonian paths in a tournament on $n$ nodes.

**New terms (beyond OEIS):**

$$a(12) \geq 531205$$

$$a(13) \geq 3719831$$

## Evidence for a(12) = 531205

- 8 independent trials (90s each, distinct seeds): 4/8 achieve exactly 531205.
- All 8 trials converge to either 531175 or 531205 — two local optima.
- Multiple DISTINCT tournaments achieve 531205 (different adjacency lists), confirming it's not a single artifact.
- The search that finds 531175 appears to be a sub-optimal basin; 531205 is the larger basin.
- No trial has found anything > 531205 despite hundreds of restarts.

## Warm starts for n=12

The Paley tournament is undefined for n=12 (12 ≢ 3 mod 4). Circulant warm starts find ~530000; the best is reached via random restarts typically at restart #400-500.

## Evidence for a(13)

Multiple independent trials (3min to 10min, 8 distinct seeds):
- Values found: 3711175, 3711303, 3711611, 3714875, 3715419, 3716335, 3717455, 3717753, 3719435, **3719831** (best)
- Two independent seeds (0x33333333 and 0x77777777) find 3719831.
- Search has NOT converged as cleanly as n=12; true maximum unclear.
- Best tournament: adj = 3666 5352 6411 3009 686 3213 6708 5701 243 3366 4444 5522 825

Note: $n=13$ is prime but $13 \equiv 1 \pmod{4}$, so the Paley tournament is undefined (would create symmetric arcs, not a tournament).

## Notes for the formalizer

(none yet)
