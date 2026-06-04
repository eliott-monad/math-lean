---
id: THM-355-quotient-gap-transport-vanishing
source: 01-canon/theorems/THM-355-quotient-gap-transport-vanishing.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-355
name: quotient-gap-transport-vanishing
status: PROVED
date: 2026-05-30
session: codex-2026-05-30
depends_on:
  - THM-336
  - THM-348
  - THM-353
lean:
  - 04-computation/lean/TournamentH7/TournamentH7/BucketBalance.lean
  - 04-computation/lean/TournamentH7/TournamentH7/StaircaseBucketTransport.lean
  - 04-computation/lean/TournamentH7/TournamentH7/Verify.lean
results:
  - 05-knowledge/results/lean_bucket_gap_transport_codex_2026-05-30.out
---

# THM-355: Quotient Gap Transport Vanishing

## Statement

Let `q : alpha -> beta` be a finite quotient map.  If a bucket `b` has empty
fiber,

```text
q^{-1}(b) = empty,
```

then every incident half-line row out of `b` is empty.  In particular:

```text
incidentHalf(q,b) = empty
selfHalf(q,b)     = empty
crossHalf(q,b)    = empty
transportHalf(q,b,c) = empty  for every c.
```

Likewise, if a target bucket `c` has empty fiber, then no transport row can
land in `c`:

## Notes for the formalizer

(none yet)
