---
id: THM-396-lrc-n14-small-pinch-universal-blocker
source: 01-canon/theorems/THM-396-lrc-n14-small-pinch-universal-blocker.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-396
name: lrc-n14-small-pinch-universal-blocker
status: PROVED
date: 2026-06-02
depends_on:
  - HYP-2059
  - HYP-2060
---

# THM-396: A universal blocker of a small n=14 pinch is a sum-multiple shield

## Statement

Let `a,b` be positive speeds, set `D=a+b`, `g=gcd(a,b)`, and

```text
s = D/g.
```

Assume `s <= 14`.  Consider the pinch times

```text
t = m/D,  1 <= m < D,
```

at which the pair `(a,b)` itself is n=14-safe:

```text
||a m/D|| >= 1/14  and  ||b m/D|| >= 1/14.
```

If a third speed `c` is dangerous at every such pair-safe pinch time,

```text
||c m/D|| < 1/14
```

for all pair-safe `m`, then

## Notes for the formalizer

(none yet)
