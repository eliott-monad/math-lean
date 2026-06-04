---
id: THM-392-lrc-n4-adjacent-family-measure-formula
source: 01-canon/theorems/THM-392-lrc-n4-adjacent-family-measure-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-392
name: lrc-n4-adjacent-family-measure-formula
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S552
depends_on:
  - HYP-2040
  - THM-391
---

# THM-392: The adjacent n=4 LRC family has an exact safe-measure formula

## Statement

Work at LRC threshold `1/4`.  For an integer `q >= 2`, define

```text
M(q) = |{ t in [0,1) : ||t|| >= 1/4,
                         ||q t|| >= 1/4,
                         ||(q+1)t|| >= 1/4 }|.
```

Equivalently, `M(q)` is the safe measure of the adjacent triple
`(1,q,q+1)`.  Then

```text
q = 0 mod 4:  M(q) = (q+2)/(16(q+1)),
q = 1 mod 4:  M(q) = (q+3)/(16q),
q = 2 mod 4:  M(q) = (q-2)/(16(q+1)),
q = 3 mod 4:  M(q) = (q-1)/(16q).
```

In particular,

```text
M(2)=0,                        for the AP triple (1,2,3),
M(q) >= 1/28 for every q >= 3,
M(q)=1/28 iff q=6.             for the triple (1,6,7)
```

## Notes for the formalizer

(none yet)
