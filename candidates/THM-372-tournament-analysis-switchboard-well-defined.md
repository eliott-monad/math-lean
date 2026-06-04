---
id: THM-372-tournament-analysis-switchboard-well-defined
source: 01-canon/theorems/THM-372-tournament-analysis-switchboard-well-defined.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-372
name: tournament-analysis-switchboard-well-defined
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S500
depends_on: []
---

# THM-372: Tournament Analysis switchboards are well-defined tournaments

## Statement

Let `V` be a finite labelled set.  Fix a strict total order `<_P` on `V`,
called the tie path.  For every unordered pair `{i,j}`, suppose we are given a
switch value

```text
s_ij in {-1,0,+1}
```

where `+1` means "orient by the displayed order `i -> j`", `-1` means
"orient by the displayed order `j -> i`", and `0` means "tie".

Resolving ties by the fixed path order

```text
i -> j  iff  i <_P j
```

produces a unique tournament on `V`.

If the switch values depend on a parameter `t` and each pair has only finitely
many switch-change times on an interval `I`, then the resulting tournament
`T(t)` is constant on the connected components of `I` minus those change times.

## Proof

For each unordered pair `{i,j}`, exactly one of three cases holds.

## Notes for the formalizer

(none yet)
