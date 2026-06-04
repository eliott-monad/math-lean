---
id: THM-376-lrc-first-even-ladder-gap-debt-conservation
source: 01-canon/theorems/THM-376-lrc-first-even-ladder-gap-debt-conservation.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-376
name: lrc-first-even-ladder-gap-debt-conservation
status: PROVED (exact finite computation)
date: 2026-06-01
session: codex-2026-06-01-S500
depends_on:
  - THM-357
---

# THM-376: The n=14 and n=18 gate ladders conserve gap-debt product

## Statement

For `n=14`, let the row-parent, gate, and double-gate ladder rows be the speed
sets

```text
L_14(d) = {1} union {d q : 1 <= q < 14, q != 6}
```

for `d=7,14,28`.

For `n=18`, let

```text
L_18(d) = {1} union {d q : 1 <= q < 18, q != 8}
```

for `d=9,18,36`.

Let

```text
gap_ratio = max_gap / (1/n)
debt      = number of unprotected endpoint values.
```

Then:

## Notes for the formalizer

(none yet)
