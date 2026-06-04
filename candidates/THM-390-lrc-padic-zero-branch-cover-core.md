---
id: THM-390-lrc-padic-zero-branch-cover-core
source: 01-canon/theorems/THM-390-lrc-padic-zero-branch-cover-core.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-390
name: lrc-padic-zero-branch-cover-core
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S547
depends_on:
  - THM-366
  - THM-369
  - HYP-2036
lean:
  - 04-computation/lean/TournamentH7/TournamentH7/LonelyRunner.lean
---

# THM-390: LRC zero-branch sieve witnesses and the AP cover core

## Statement

Let `n >= 3` and let `V` be a Lonely Runner speed set with threshold `1/n`.
For each denominator node

```text
q = 2,3,...,n
```

define the product zero-branch mass

```text
z_q(V) = #{v in V : q divides v}.
```

Then:

1. If `2 <= q < n` and `z_q(V)=0`, then `t=1/q` is an open lonely witness:
   every speed has distance at least `1/q > 1/n` from an integer.
2. If `q=n` and `z_n(V)=0`, then `t=1/n` is a closed, compactified wall
   witness: every speed has distance at least `1/n` from an integer.
3. Therefore any speed set with no open sieve witness among these denominator
   nodes must cover every `q=2,...,n-1`; any speed set with no compact sieve
   witness must cover every `q=2,...,n`.

## Notes for the formalizer

(none yet)
