---
id: THM-365-lrc-endpoint-protection-cycle-necessity
source: 01-canon/theorems/THM-365-lrc-endpoint-protection-cycle-necessity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-365
name: lrc-endpoint-protection-cycle-necessity
status: PROVED
date: 2026-05-31
session: codex-2026-05-31-S384
depends_on:
  - THM-357
  - THM-359
results:
  - 05-knowledge/results/lonely_runner_endpoint_cycle_formal_s384.out
---

# THM-365: Endpoint-Protection Cycle Necessity

## Statement

Let `(E,I,B,P)` be a finite endpoint/interval protection system, where:

```text
B(i) subset E       boundary endpoints of interval i,
P(e) subset I       intervals strictly protecting endpoint e.
```

Assume each interval has at least one boundary endpoint.  In the LRC
specialization each interval has exactly two.

Define the endpoint-protection digraph `G` on `E` by drawing an arrow

```text
e -> f
```

when some interval `i in P(e)` has `f in B(i)`.

If `(E,I,B,P)` has a nonempty protection core in the sense of THM-359, then
the induced endpoint-protection digraph on the core contains a directed cycle.

Consequently, by THM-357 and THM-359, every reduced Lonely Runner
counterexample must contain a directed cycle in its labelled arithmetic

## Notes for the formalizer

(none yet)
