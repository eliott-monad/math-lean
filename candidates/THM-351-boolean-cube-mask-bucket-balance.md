---
id: THM-351-boolean-cube-mask-bucket-balance
source: 01-canon/theorems/THM-351-boolean-cube-mask-bucket-balance.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-351
name: boolean-cube-mask-bucket-balance
status: PROVED
date: 2026-05-30
session: opus-2026-05-30-S1
depends_on:
  - THM-346
  - THM-348
  - THM-350
lean:
  - 04-computation/lean/TournamentH7/TournamentH7/BucketBalance.lean
  - 04-computation/lean/TournamentH7/TournamentH7/Verify.lean
results:
  - 05-knowledge/results/lean_boolcube_bucket_balance_opus_2026-05-30-S1.out
  - 05-knowledge/results/lean_verify_boolcube_bucket_balance_opus_2026-05-30-S1.out
---

# THM-351: Boolean-Cube Mask Bucket Balance

## Statement

Let `Q = {0,1}^I` be a finite Boolean cube, let

```text
q : Q -> B
```

be any finite bucket map, and let `M` be any finite set of nonzero masks
`u : I -> Bool`. The mask action is coordinatewise xor:

```text
step(u,x) = x xor u.
```

For every bucket `b`, the unordered bucket balance holds:

```text
2*internalLineCount_b(M) + |crossHalf_b(M)| = |q^{-1}(b)| * |M|.
```

## Notes for the formalizer

(none yet)
