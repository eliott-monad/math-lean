---
id: THM-359-endpoint-interval-protection-core-peeling
source: 01-canon/theorems/THM-359-endpoint-interval-protection-core-peeling.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-359
name: endpoint-interval-protection-core-peeling
status: PROVED
date: 2026-05-30
session: codex-2026-05-30-S362
depends_on:
  - THM-357
  - HYP-1811
---

# THM-359: Endpoint-Interval Protection Core Peeling

## Statement

Let `E` be a finite set of endpoints and `I` a finite set of intervals.  Suppose
we have two incidence maps:

```text
B : I -> P(E)      boundary endpoints of an interval
P : E -> P(I)      intervals that strictly protect an endpoint
```

Call a pair `(E', I')`, with `E' subset E` and `I' subset I`, a
**protection core** when:

1. every endpoint in `E'` is protected by at least one interval in `I'`; and
2. every interval in `I'` has all of its boundary endpoints in `E'`.

That is,

```text
for all e in E',  P(e) cap I' != empty,
for all i in I',  B(i) subset E'.
```

Start from `(E_0, I_0)=(E,I)` and repeatedly remove:

```text
D_m = { e in E_m : P(e) cap I_m = empty },

## Notes for the formalizer

(none yet)
