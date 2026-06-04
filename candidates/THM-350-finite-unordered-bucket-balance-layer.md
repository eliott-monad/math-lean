---
id: THM-350-finite-unordered-bucket-balance-layer
source: 01-canon/theorems/THM-350-finite-unordered-bucket-balance-layer.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-350
name: finite-unordered-bucket-balance-layer
status: PROVED
date: 2026-05-30
session: kind-pasteur-2026-05-30-S2
lean:
  - 04-computation/lean/TournamentH7/TournamentH7/BucketBalance.lean
  - 04-computation/lean/TournamentH7/TournamentH7/Verify.lean
results:
  - 05-knowledge/results/lean_bucket_balance_kind_pasteur_2026-05-30-S2.out
  - 05-knowledge/results/lean_verify_unordered_kind_pasteur_2026-05-30-S2.out
  - 05-knowledge/results/lean_tournamenth7_root_kind_pasteur_2026-05-30-S2.out
---

# THM-350: Finite Unordered Bucket Balance Layer

## Statement

Let `alpha` be a finite set, let

```text
q : alpha -> beta
```

be a bucket map, and let `moves` be a finite set of moves with action

```text
step : move -> alpha -> alpha.
```

For a bucket `b`, let `selfHalf(b)` and `crossHalf(b)` be the oriented
internal and escaping half-line sets from THM-348.

If the selected moves act as fixed-point-free involutions on `alpha`, then
`selfHalf(b).card` is even. Define

```text
internalLineCount(b) = selfHalf(b).card / 2.
```

## Notes for the formalizer

(none yet)
