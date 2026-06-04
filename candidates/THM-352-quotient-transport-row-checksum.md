---
id: THM-352-quotient-transport-row-checksum
source: 01-canon/theorems/THM-352-quotient-transport-row-checksum.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-352
name: quotient-transport-row-checksum
status: PROVED
date: 2026-05-30
session: codex-2026-05-30
depends_on:
  - THM-348
  - THM-350
  - THM-351
lean:
  - 04-computation/lean/TournamentH7/TournamentH7/BucketBalance.lean
  - 04-computation/lean/TournamentH7/TournamentH7/Verify.lean
results:
  - 05-knowledge/results/lean_transport_row_bucket_balance_codex_2026-05-30.out
---

# THM-352: Quotient Transport Row Checksum

## Statement

Let `alpha` be finite, let

```text
q : alpha -> beta
```

be a finite bucket map, and let `moves` be a finite set of moves acting by

```text
step : move -> alpha -> alpha.
```

For buckets `b,c`, define the oriented transport entry

```text
transportHalf(b,c) =
  {(x,u) : q(x)=b, u in moves, q(step(u,x))=c}.
```

## Notes for the formalizer

(none yet)
