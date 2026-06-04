---
id: THM-366-lrc-small-denominator-divisibility-sieve
source: 01-canon/theorems/THM-366-lrc-small-denominator-divisibility-sieve.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-366
name: lrc-small-denominator-divisibility-sieve
status: PROVED
date: 2026-05-31
session: codex-2026-05-31-S388
depends_on:
  - THM-357
  - THM-360
  - HYP-1850
results:
  - 05-knowledge/results/lrc_small_denominator_sieve_s388.out
---

# THM-366: LRC Small-Denominator Divisibility Sieve

## Statement

Let `V={v_1,...,v_{n-1}}` be a Lonely Runner speed set at threshold `1/n`.
Let `m` be an integer with `2 <= m <= n`, and let `a` be a unit modulo `m`.
At the point

```text
t = a/m,
```

a speed `v` can strictly forbid, or strictly protect, `t` only if

```text
m | v.
```

Equivalently, if no speed in `V` is divisible by `m`, then `t=a/m` is a
lonely witness in the closed Lonely Runner sense.  More precisely:

1. if `m < n`, then `t=a/m` is an open lonely witness, since every distance is
   strictly larger than `1/n`;
2. if `m = n`, then `t=a/n` is a boundary lonely witness.

Consequently, every full-open-cover counterexample at level `n` must contain,

## Notes for the formalizer

(none yet)
