---
id: THM-348-finite-bucket-halfline-balance
source: 01-canon/theorems/THM-348-finite-bucket-halfline-balance.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-348
name: finite-bucket-halfline-balance
status: PROVED
date: 2026-05-30
session: kind-pasteur-2026-05-30-S1
lean:
  - 04-computation/lean/TournamentH7/TournamentH7/BucketBalance.lean
results:
  - 05-knowledge/results/lean_bucket_balance_kind_pasteur_2026-05-30-S1.out
---

# THM-348: Finite Bucket Half-Line Balance

## Statement

Let `alpha` be a finite set, let

```text
q : alpha -> beta
```

be any bucket map, and let `M` be a finite set of moves with an action

```text
step : M -> alpha -> alpha.
```

For a bucket `b`, define:

- `fiber(b) = {x : alpha | q(x)=b}`.
- `incidentHalf(b) = fiber(b) x M`.
- `selfHalf(b) = {(x,u) in incidentHalf(b) | q(step(u,x)) = b}`.
- `crossHalf(b) = {(x,u) in incidentHalf(b) | q(step(u,x)) != b}`.

Then

```text
|selfHalf(b)| + |crossHalf(b)| = |fiber(b)| * |M|.
```

## Notes for the formalizer

(none yet)
