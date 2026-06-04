---
id: THM-346-tiling-quotient-bucket-balance
source: 01-canon/theorems/THM-346-tiling-quotient-bucket-balance.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-346
name: tiling-bucket-balance
status: PROVED
date: 2026-05-29
session: kind-pasteur-2026-05-29-S5
scripts:
  - 04-computation/tiling_quotient_bucket_balance_s5.py
results:
  - 05-knowledge/results/tiling_quotient_bucket_balance_s5.out
---

# THM-346: Tiling Bucket Balance for Quotients of the Hypercube

## Statement

Let `Q_m = {0,1}^m` be the tiling hypercube. Let

```text
q : Q_m -> B
```

be any quotient map into a finite set of buckets. For a nonempty set `M` of
nonzero masks in `Q_m`, put an undirected line between `x` and `x xor u` for
each `u in M`.

For a bucket `b in B`, define:

- `B_b = q^{-1}(b)`.
- `self_b(M)` = number of unordered `M`-lines with both endpoints in `B_b`.
- `w_bc(M)` = number of unordered `M`-lines with one endpoint in `B_b` and
  the other in `B_c`, for `c != b`.

Then every bucket satisfies the exact balance law

```text
2*self_b(M) + sum_{c != b} w_bc(M) = |B_b| * |M|.
```

Equivalently, each bucket has exactly `|B_b|*|M|` incident half-lines, with

## Notes for the formalizer

(none yet)
