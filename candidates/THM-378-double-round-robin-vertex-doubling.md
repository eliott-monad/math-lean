---
id: THM-378-double-round-robin-vertex-doubling
source: 01-canon/theorems/THM-378-double-round-robin-vertex-doubling.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-378
name: double-round-robin-vertex-doubling
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S501c
depends_on:
  - THM-371
---

# THM-378: Vertex doubling is a double-round-robin voltage lift

## Statement

Let `T` be a tournament on a finite vertex set `V`, and let

```text
sigma : {{u,v} : u != v} -> F_2
```

be a voltage bit on every unordered pair.  Define a tournament
`D_sigma(T)` on `V x F_2` as follows.

First put the internal fiber arc

```text
(v,0) -> (v,1)
```

for every `v in V`.  For every base arc `u -> v` in `T` and every
`r in F_2`, put

```text
(u,r) -> (v,r + sigma_uv),
(v,r) -> (u,r + sigma_uv + 1).
```

Then:

1. `D_sigma(T)` is a tournament on `2|V|` vertices.

## Notes for the formalizer

(none yet)
