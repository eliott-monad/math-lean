---
id: THM-373-runner-phase-clock-wall-decomposition
source: 01-canon/theorems/THM-373-runner-phase-clock-wall-decomposition.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-373
name: runner-phase-clock-wall-decomposition
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S500
depends_on:
  - THM-372
---

# THM-373: The runner phase comparator gives a finite closed tournament walk

## Statement

Let `s_0,...,s_{n-1}` be distinct integer speeds.  Put runner `i` at

```text
x_i(t) = s_i t mod 1
```

on the unit circle.  Define the half-turn phase comparator by

```text
i -> j  iff  frac((s_j - s_i)t) in (0,1/2),
```

with collision and antipodal ties completed by a fixed Hamiltonian tie path.

Then:

1. the only times at which the arc between `i` and `j` can change are

```text
t = m / (2 |s_i - s_j|)
```

for integers `m`;

2. on `[0,1)` the comparator has finitely many wall times;

## Notes for the formalizer

(none yet)
