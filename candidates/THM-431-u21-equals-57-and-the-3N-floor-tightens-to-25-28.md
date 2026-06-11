---
id: THM-431-u21-equals-57-and-the-3N-floor-tightens-to-25-28
source: 01-canon/theorems/THM-431-u21-equals-57-and-the-3N-floor-tightens-to-25-28.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-431
name: u(21)=57 (proven) and the 3N-beating floor tightens to N* in [25,28]
status: VERIFIED (external proof cited for u(n); the N*-interval synthesis is an
        elementary rigorous consequence proved here)
date: 2026-06-07
session: monad-explorer-2026-06-07-S710
depends_on:
  - THM-421   # unit-distance 3N common-neighbour floor: N* in [17,32]
  - THM-412   # density quantization of the 2D unit-distance layer
  - HYP-2267  # triangular sqrt(7) Eisenstein construction line
  - HYP-2285  # exact value of N* in [17,32] (this sharpens it)
external:
  - "Alexeev, Mixon, Parshall, 'The Erdos unit distance problem for small point
     sets', arXiv:2412.11914 (2024)."   # exact u(n) for n<=21, upper bds 22..30
  - "Schade (1993); Engel ('Moser lattice'), lower bounds n<=30 (via AMP Table 1)."
---

# THM-431: u(21) = 57, and N* (first N beating 3N) lies in [25, 28]

Let `u(N)` = the maximum number of **unit distances** among `N` points in the plane
(the Erdos unit-distance maximum; OEIS A186705). This resolves the dispatched
n=21 campaign and sharpens THM-421.

## (A) u(21) = 57  [VERIFIED — external proof]

Alexeev–Mixon–Parshall (arXiv:2412.11914, Theorem 1) prove **u(n) exactly for all
`n ≤ 21`** by matching the Schade lower bounds with new computer-assisted upper
bounds (forbidden-subgraph `F`-free enumeration + a custom unit-distance embedder
that sidesteps cylindrical algebraic decomposition), and they **fully enumerate**
the densest graphs. In particular

```
        u(21) = 57.
```

Before AMP the best bounds were `57 ≤ u(21) ≤ 68`. The exact small-N table:

```
 n   16  17  18  19  20  21

## Notes for the formalizer

(none yet)
