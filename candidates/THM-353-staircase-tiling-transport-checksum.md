---
id: THM-353-staircase-tiling-transport-checksum
source: 01-canon/theorems/THM-353-staircase-tiling-transport-checksum.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-353
name: staircase-tiling-transport-checksum
status: PROVED
date: 2026-05-30
session: codex-2026-05-30
depends_on:
  - THM-330
  - THM-336
  - THM-351
  - THM-352
lean:
  - 04-computation/lean/TournamentH7/TournamentH7/StaircaseTileModel.lean
  - 04-computation/lean/TournamentH7/TournamentH7/StaircaseBucketTransport.lean
  - 04-computation/lean/TournamentH7/TournamentH7/Verify.lean
results:
  - 05-knowledge/results/lean_staircase_bucket_transport_codex_2026-05-30.out
---

# THM-353: Staircase Tiling Transport Checksum

## Statement

The concrete staircase tiling space

```text
StTiling n := StTile n -> Bool
```

is a finite Boolean cube.  In Lean, `StTile n` is equivalent to the finite
subtype of legal coordinate pairs

```text
{(hi,lo) : Fin n x Fin n // lo.val + 2 <= hi.val}.
```

Therefore the Boolean-cube transport row checksum of THM-352 applies directly
to staircase tilings.

For any finite bucket map

## Notes for the formalizer

(none yet)
