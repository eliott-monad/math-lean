---
id: THM-362-natural-operation-graph-shadows
source: 01-canon/theorems/THM-362-natural-operation-graph-shadows.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-362
name: natural-operation-graph-shadows
status: PROVED
date: 2026-05-31
session: codex-2026-05-31-S365
depends_on:
  - THM-361
---

# THM-362: Natural Operation Graph Shadows

## Statement

Let `N+ = {1,2,3,...}`.

Define the additive operation graph `A` by putting a loopless simple directed
edge `x -> z` when there exists `y in N+` with `x+y=z`.  Then

```text
x -> z in A  iff  x < z.
```

Consequently, the induced graph on `{1,...,N}` is the transitive tournament,
and its transitive reduction is the successor chain.

Define the multiplicative operation graph `M` by putting a loopless simple
directed edge `x -> z` when there exists `y in N+` with `xy=z`.  Then

```text
x -> z in M  iff  x divides z and x < z.
```

Thus `M` is the proper-divisor DAG.  On `{1,...,N}`, its transitive reduction
has exactly the edges

```text
x -> xp
```

## Notes for the formalizer

(none yet)
