---
id: THM-385-lrc-observer-score-blocker-stratification
source: 01-canon/theorems/THM-385-lrc-observer-score-blocker-stratification.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-385
name: lrc-observer-score-blocker-stratification
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S517
depends_on:
  - THM-381
  - THM-384
---

# THM-385: Observer score is exactly the LRC blocker count

## Statement

Let `T_S(t)` be the observer-marked LRC tournament from THM-381 on a speed
system

```text
S = {0, v_1, ..., v_{n-1}}
```

with threshold `1/n`.  The observer is the marked vertex `0`, and observer
incident edges are oriented by

```text
0 -> i    iff    ||v_i t|| >= 1/n.
```

Define the blocker count at time `t` by

```text
B(t) = #{ i in {1,...,n-1} : ||v_i t|| < 1/n }.
```

Then

```text
outdeg_T(0) = (n - 1) - B(t)
indeg_T(0)  = B(t).

## Notes for the formalizer

(none yet)
