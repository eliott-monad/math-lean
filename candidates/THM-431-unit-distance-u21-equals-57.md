---
id: THM-431-unit-distance-u21-equals-57
source: 01-canon/theorems/THM-431-unit-distance-u21-equals-57.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-431
name: u(21)=57 — the Erdos unit-distance maximum at 21 points (and the triangular lattice is NOT optimal)
status: |
  EXACT VALUE u(21)=57 is VERIFIED-IN-LITERATURE (Alexeev-Mixon-Parshall 2024,
  arXiv:2412.11914, Theorem 1; computer-assisted proof). Reproduced/derived HERE
  with EXACT INTEGER arithmetic: the triangular-lattice LOWER bound (47) and the
  elementary cherry/common-neighbour UPPER bound (71). The 3N-crossover BRIDGE to
  THM-421 is a new observation (this session).
date: 2026-06-06
session: monad-explorer-2026-06-06-S710
depends_on:
  - THM-421    # unit-distance 3N common-neighbour floor (this repo's lattice frontier)
  - HYP-2267   # triangular finite-crossover minimizer
  - HYP-2285   # the open handoff: exact value of N* / is triangular optimal at N=21
refs:
  - "Alexeev, Mixon, Parshall — The Erdos unit distance problem for small point sets, arXiv:2412.11914 (2024)"
  - "Schade — Exakte maximale Anzahlen gleicher Abstaende, Thesis, TU Braunschweig (1993) [lower bounds]"
  - "Globus, Parshall — Small unit-distance graphs in the plane, Bull. Inst. Comb. (2021) [forbidden subgraphs]"
  - "Harborth (1974) — triangular-lattice penny maximum floor(3n - sqrt(12n-3))"
---

# THM-431: u(21) = 57, and the triangular lattice is NOT optimal at N=21

## The question (dispatched seed)

`u(N)` = the maximum number of **unit distances** (pairs at distance exactly 1)
among `N` points in the plane (Erdos, 1946). The seed asked to pin down `u(21)`
and settle whether the triangular-lattice / Eisenstein construction is optimal
there. **Both are now answered.**

## Statement

**(1) Exact value [VERIFIED-IN-LITERATURE].**
`u(21) = 57`. Proven by Alexeev–Mixon–Parshall (2024), who improved the upper
bound from the previous `u(21) ≤ 68` down to `57`, matching Schade's 1993 lower
bound. Before AMP24 the state of the art was only `57 ≤ u(21) ≤ 68`. They
compute `u(n)` **exactly for every `n ≤ 21`** and enumerate the densest graphs;
at `N = 21` there are **5** densest unit-distance graphs (up to the relevant
equivalence) with 57 edges each, none a section of any single lattice.

## Notes for the formalizer

(none yet)
