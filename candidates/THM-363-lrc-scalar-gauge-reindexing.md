---
id: THM-363-lrc-scalar-gauge-reindexing
source: 01-canon/theorems/THM-363-lrc-scalar-gauge-reindexing.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-363
name: lrc-scalar-gauge-reindexing
status: PROVED
date: 2026-05-31
session: codex-2026-05-31-S367
depends_on:
  - THM-358
---

# THM-363: LRC Scalar-Gauge Reindexing

## Statement

Fix integers `n>=2` and `k>=1`.  For an open cell `C` in the discontinuity
arrangement of

```text
alpha -> (floor(n {i alpha}))_{i=1..k},
```

write its constant floor vector as

```text
B_C(i) = floor(n {i alpha}),  alpha in C.
```

For `s,m mod n`, translation

```text
T_{s,m}(alpha) = alpha + s m / n  mod 1
```

permutes the open cells of the arrangement, and for every cell `C`,

```text
B_{T_{s,m}C}(i) == B_C(i) + s m i    mod n.
```

Consequently, if residue vectors are gauged by

## Notes for the formalizer

(none yet)
