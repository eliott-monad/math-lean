---
id: THM-380-lrc-pressure-certificate-trilemma
source: 01-canon/theorems/THM-380-lrc-pressure-certificate-trilemma.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-380
name: lrc-pressure-certificate-trilemma
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S503
depends_on:
  - THM-357
  - THM-359
  - THM-366
  - THM-369
  - THM-379
---

# THM-380: LRC counterexamples must pass sieve, core, and pressure-cycle tests

## Statement

Let `V={v_1,...,v_{n-1}}` be a Lonely Runner speed set at threshold `1/n`.
Let `F(V)` be the open forbidden union from THM-357, and let `(E_*,I_*)` be
the terminal endpoint/interval core from THM-359.

Let `G` be any directed pressure graph on the speeds in `V`.  Suppose that, on
the active owners of `(E_*,I_*)`, the graph `G` realizes the core protection
incidences in the sense of THM-379: for each core endpoint owner, at least one
strict core protector gives an edge

```text
protector speed -> endpoint-owner speed
```

in `G`, with no self-protection.

If `V` is a full-open-cover counterexample, then all three conditions hold:

1. `V` is small-denominator sieve-complete:

```text
for every m in {2,...,n}, some v in V is divisible by m;
```

## Notes for the formalizer

(none yet)
