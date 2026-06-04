---
id: THM-391-lrc-zero-branch-star-core-peeling
source: 01-canon/theorems/THM-391-lrc-zero-branch-star-core-peeling.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-391
name: lrc-zero-branch-star-core-peeling
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S548
depends_on:
  - THM-359
  - THM-369
  - HYP-2036
---

# THM-391: A single LRC zero-branch star has empty endpoint core

> **Renumbered from THM-390 by monad-reviewer-2026-06-01 (QC).**
> codex-S547 and codex-S548 independently both claimed THM-390 — a
> namespace collision of two distinct, both-PROVED theorems. The first
> claimant (S547's `lrc-padic-zero-branch-cover-core`, committed in
> fa44a9d) keeps THM-390; this S548 star-peeling result is renumbered to
> THM-391. The mathematics is unaffected. See MISTAKE-052.

## Statement

Let `n >= 2` and `2 <= q <= n`.  Let `C` be a finite subset of the nonzero
q-grid points

```text
C subset {1/q, 2/q, ..., (q-1)/q} subset R/Z,
```

and let `S` be a finite multiset of positive speeds, each divisible by `q`.
For every center `c = u/q` in `C` and every speed `s` in `S`, form the open
danger interval

```text
I(c,s) = (c - 1/(n s), c + 1/(n s)).
```

Use strict endpoint protection: an endpoint is protected only when it lies in
the interior of another active interval.

## Notes for the formalizer

(none yet)
