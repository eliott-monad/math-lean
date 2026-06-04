---
id: THM-354-good-cut-scc-count
source: 01-canon/theorems/THM-354-good-cut-scc-count.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-354
name: good-cut-scc-count
status: PROVED
date: 2026-05-30
session: codex-2026-05-30-support-residue
depends_on:
  - THM-330
scripts:
  - 04-computation/goodcut_scc_defect_s354.py
results:
  - 05-knowledge/results/goodcut_scc_defect_s354.out
---

# THM-354: Good-Cut Count Equals n Minus the SCC Count

## Statement

Let `T` be a tournament on `n` vertices and let

```text
P = (v_0, v_1, ..., v_{n-1})
```

be any directed Hamiltonian path of `T`. A cut `k in {1,...,n-1}` of this path
is good if some arc crosses it backward:

```text
v_j -> v_i for some i < k <= j.
```

Let `c(T)` be the number of strongly connected components of `T`. Then the
number of good cuts is

```text
g_P(T) = n - c(T).
```

In particular, `g_P(T)` is independent of the Hamiltonian path `P`. The bad
cuts are exactly the boundaries between consecutive strong components in the

## Notes for the formalizer

(none yet)
