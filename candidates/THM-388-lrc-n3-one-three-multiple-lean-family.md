---
id: THM-388-lrc-n3-one-three-multiple-lean-family
source: 01-canon/theorems/THM-388-lrc-n3-one-three-multiple-lean-family.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-388
name: lrc-n3-one-three-multiple-lean-family
status: PROVED (Lean-checked)
date: 2026-06-01
session: codex-2026-06-01-S534
depends_on:
  - THM-369
  - THM-386
lean: 04-computation/lean/TournamentH7/TournamentH7/LonelyRunner.lean
---

# THM-388: A checked residual `n = 3` LRC family

For every positive natural number `r`, the two-speed family `{1, 3r}` has a
`3`-lonely time.  In the Lean module this is the theorem
`three_one_three_mul_lonely`.

## Lean statement

In words:

```text
0 < r -> exists t, Lonely 3 (1, 3r) t.
```

The explicit witness is

```text
t = 1/3 + 1/(9r).
```

## Proof

The witness lies in the central band for the first runner:

```text
1/3 <= 1/3 + 1/(9r) <= 2/3.
```

## Notes for the formalizer

(none yet)
