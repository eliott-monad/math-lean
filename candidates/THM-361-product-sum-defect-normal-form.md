---
id: THM-361-product-sum-defect-normal-form
source: 01-canon/theorems/THM-361-product-sum-defect-normal-form.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-361
name: product-sum-defect-normal-form
status: PROVED
date: 2026-05-31
session: codex-2026-05-31-S365
lean: TournamentH7.ProductSum
depends_on: []
---

# THM-361: Product-Sum Defect Normal Form

## Statement

Let `M` be a finite multiset of positive integers and let

```text
P(M) = product of entries of M,
S(M) = sum of entries of M.
```

Remove all `1`s from `M` and call the remaining multiset `C`.  If `m` is the
number of removed `1`s, then

```text
P(M) = S(M)
```

if and only if

```text
P(C) - S(C) = m.
```

Conversely, every finite multiset `C` of integers at least `2` with
`d = P(C)-S(C) >= 0` gives a product-sum multiset by adjoining exactly `d`
copies of `1`.

In particular:

## Notes for the formalizer

(none yet)
