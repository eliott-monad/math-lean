---
id: THM-397-lrc-n14-collective-pinch-endpoint-blocker
source: 01-canon/theorems/THM-397-lrc-n14-collective-pinch-endpoint-blocker.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-397
name: lrc-n14-collective-pinch-endpoint-blocker
status: PROVED
date: 2026-06-02
depends_on:
  - HYP-2059
  - HYP-2061
  - THM-396
---

# THM-397: A collective non-shield cover of a small n=14 pinch needs an endpoint blocker

## Statement

Let `a,b` be positive speeds, set

```text
D = a+b,    g = gcd(a,b),    s = D/g.
```

Assume `2 <= s <= 14`.  Consider the pair-safe pinch times

```text
t = m/D,    1 <= m < D,    m not == 0 (mod s),
```

which are exactly the `n=14`-safe pinch times for the pair `(a,b)`.

Let `C` be any set of third speeds.  If every pair-safe pinch time is killed by
some speed in `C`,

```text
for every m not == 0 (mod s), there is c in C with ||c m / D|| < 1/14,
```

then at least one speed in `C` is an endpoint blocker modulo `D`:

```text
||c/D|| < 1/14.

## Notes for the formalizer

(none yet)
