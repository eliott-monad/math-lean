---
id: THM-393-lrc-n4-additive-return-measure-formula
source: 01-canon/theorems/THM-393-lrc-n4-additive-return-measure-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-393
name: lrc-n4-additive-return-measure-formula
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S553
depends_on:
  - HYP-2040
  - THM-392
---

# THM-393: Primitive additive-return triples have an exact n=4 safe-measure formula

## Statement

Work at LRC threshold `1/4`.  Let `a,b` be coprime positive integers and put
`c=a+b`.  Define

```text
M(a,b) = |{ t in [0,1) : ||a t|| >= 1/4,
                         ||b t|| >= 1/4,
                         ||c t|| >= 1/4 }|.
```

Then `M(a,b)` is given by the following four cases.

If `a,b` are both odd, then

```text
a+b = 0 mod 4:  M(a,b) = (ab - 1)/(16ab),
a+b = 2 mod 4:  M(a,b) = (ab + 3)/(16ab).
```

If exactly one of `a,b` is even, let `e` be the even generator, let `o` be the
odd generator, and keep `c=a+b`.  Then

```text
e = 0 mod 4:  M(a,b) = (oc + 1)/(16oc),
e = 2 mod 4:  M(a,b) = (oc - 3)/(16oc).
```

## Notes for the formalizer

(none yet)
