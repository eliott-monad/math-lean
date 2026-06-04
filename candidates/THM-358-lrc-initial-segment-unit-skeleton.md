---
id: THM-358-lrc-initial-segment-unit-skeleton
source: 01-canon/theorems/THM-358-lrc-initial-segment-unit-skeleton.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-358
name: lrc-initial-segment-unit-skeleton
status: PROVED
date: 2026-05-30
session: codex-2026-05-30-S362
depends_on:
  - THM-357
  - HYP-1810
---

# THM-358: Initial-Segment Lonely Runner Unit Skeleton

## Statement

Let `n >= 2` and take the initial-segment speed set

```text
V_n = {1, 2, ..., n-1}
```

with Lonely Runner threshold `1/n`.  Then the safe set is exactly

```text
{ a/n : 1 <= a <= n-1 and gcd(a,n)=1 }.
```

Equivalently,

```text
for every t in R/Z, either
  ||v t|| < 1/n for some 1 <= v <= n-1,
or
  t = a/n with gcd(a,n)=1.
```

Every point `a/n` with `gcd(a,n)=1` is an unprotected forbidden endpoint, and
there are no other unprotected endpoints.

## Proof

## Notes for the formalizer

(none yet)
