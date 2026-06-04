---
id: THM-368-hyperbola-triangle-q-gauge
source: 01-canon/theorems/THM-368-hyperbola-triangle-q-gauge.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-368
name: hyperbola-triangle-q-gauge
status: PROVED
date: 2026-05-31
session: codex-2026-05-31-S395
depends_on: []
results:
  - 05-knowledge/results/hyperbola_triangle_q_gauge_s395.out
---

# THM-368: Hyperbola-Triangle q-Gauge

## Statement

The area

```text
int_0^1 x dx + int_1^2 dx/x
```

is

```text
1/2 + log(2).
```

There are two equivalent q-decompositions.

First, for any integrable `q` on `[0,2]` with

```text
int_0^2 q(x) dx = 1/2,
```

the Hadamard finite part satisfies

```text
FP int_0^2 (1/x + q(x)) dx = log(2) + 1/2.
```

## Notes for the formalizer

(none yet)
