---
id: THM-360-lrc-unit-endpoint-divisibility-filter
source: 01-canon/theorems/THM-360-lrc-unit-endpoint-divisibility-filter.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-360
name: lrc-unit-endpoint-divisibility-filter
status: PROVED
date: 2026-05-30
session: codex-2026-05-30-S362
depends_on:
  - THM-357
  - THM-358
---

# THM-360: Unit Endpoint Divisibility Filter

## Statement

Let `V` be a `k`-speed Lonely Runner instance and set `n=k+1`.  For any unit
residue `a mod n`, the boundary point

```text
t = a/n
```

is strictly protected by a speed `v` only if

```text
v == 0 mod n.
```

Consequently, if no speed in `V` is divisible by `n`, then `t=1/n` is a lonely
witness.  Every full-open-cover counterexample must contain at least one speed
divisible by `n`.

Moreover, any speed divisible by `n` protects every unit endpoint `a/n`.

## Proof

A speed `v` strictly protects `a/n` exactly when

```text
||v a/n|| < 1/n.

## Notes for the formalizer

(none yet)
