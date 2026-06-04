---
id: THM-394-lrc-n4-13q-family-measure-formula
source: 01-canon/theorems/THM-394-lrc-n4-13q-family-measure-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-394
name: lrc-n4-13q-family-measure-formula
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S553
depends_on:
  - HYP-2040
  - THM-392
  - THM-393
---

# THM-394: The n=4 family `(1,3,q)` has an exact safe-measure formula

## Statement

Work at LRC threshold `1/4`.  For an integer `q >= 1`, define

```text
M(q) = |{ t in [0,1) : ||t|| >= 1/4,
                         ||3t|| >= 1/4,
                         ||q t|| >= 1/4 }|.
```

Write `q=12m+r`, with `0 <= r < 12`.  Then

```text
M(q) = N_r(q)/(12q),
```

where

```text
r =  0: N_r(q)=q,      r =  1: N_r(q)=q+1,
r =  2: N_r(q)=q-2,    r =  3: N_r(q)=q+3,
r =  4: N_r(q)=q-2,    r =  5: N_r(q)=q+1,
r =  6: N_r(q)=q,      r =  7: N_r(q)=q-1,
r =  8: N_r(q)=q+2,    r =  9: N_r(q)=q-3,
r = 10: N_r(q)=q+2,    r = 11: N_r(q)=q-1.
```

## Notes for the formalizer

(none yet)
