---
id: THM-381-lrc-observer-source-marked-reachability
source: 01-canon/theorems/THM-381-lrc-observer-source-marked-reachability.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-381
name: lrc-observer-source-marked-reachability
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S513
depends_on:
  - THM-372
---

# THM-381: LRC loneliness is observer-source reachability in a marked tournament

## Statement

Let

```text
S = {0, v_1, ..., v_{n-1}}
```

be a Lonely Runner speed system with stationary observer `0` and threshold
`1/n`.  For a time `t`, define the observer-source LRC tournament `T_S(t)` on
vertices `{0,1,...,n-1}` as follows.

For observer-runner pairs, orient

```text
0 -> i    iff    ||v_i t|| >= 1/n,
i -> 0    otherwise.
```

For runner-runner pairs, use any complete tie-resolved Tournament Analysis
comparator, for example the half-turn circular comparator with a fixed
Hamiltonian tie path.

Then the observer is lonely at time `t` iff the marked vertex `0` is a source
of `T_S(t)`:

```text
forall i, ||v_i t|| >= 1/n

## Notes for the formalizer

(none yet)
