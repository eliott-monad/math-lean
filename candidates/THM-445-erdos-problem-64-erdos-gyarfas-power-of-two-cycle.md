---
id: THM-445-erdos-problem-64-erdos-gyarfas-power-of-two-cycle
source: 01-canon/theorems/THM-445-erdos-problem-64-erdos-gyarfas-power-of-two-cycle.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-445 — Erdős Problem 64 (the Erdős–Gyárfás conjecture): min degree ≥3 ⟹ a cycle of length a power of two — OPEN; verified small/structured; the dyadic framing

**Status:** OPEN (the conjecture itself is unproven and falsifiable). This entry records the **correct**
problem (correcting MISTAKE-064 / THM-443), the known partial results, a computational verification
(no counterexample on small + structured graphs), and the dyadic framing. **No new theorem; honest
status of an open problem.**
**Source:** opus-2026-06-08-S709, correcting S708. The user's "Work On" target.

## The problem (Erdős Problem 64 = Erdős–Gyárfás conjecture, 1995)

> **Conjecture.** Every finite graph `G` with `δ(G) ≥ 3` contains a cycle whose length is a **power of
> two** — i.e. a cycle of length `2^k` for some `k ≥ 2` (length `∈ {4, 8, 16, 32, …}`). **OPEN.**

This is **not** the even-cycle statement (THM-443, settled-true: an even cycle of length `≥4` always
exists). Requiring the length to be *exactly* a power of two is a **2-adic (dyadic)** constraint,
vastly stronger: a counterexample must avoid `4, 8, 16, 32, …` **all at once**.

## Known status (literature)

- **OPEN** in general (Erdős–Gyárfás 1995; Erdős offered a prize).
- **PROVED for cubic planar graphs** (Heckman–Krakovski 2013).
- **Computationally verified** with no counterexample (Markström and others searched cubic graphs);
  the would-be extremal graphs have high girth and large order.
- Min degree ≥3 forces a *rich cycle spectrum* — e.g. **Bondy–Vince (1998):** every graph with
  min degree ≥3 has two cycles whose lengths differ by 1 or 2. The open content is whether that
  spectrum must **hit** a power of two.

## Computational verification (this session, `…s709.py`)

- **Exhaustive n≤7 (graph atlas):** all **173** graphs with `δ≥3` contain a power-of-two cycle
  (necessarily a 4-cycle, since on `≤7` vertices `δ≥3` forces girth `≤4`). 0 counterexamples.
- **Girth ≥5 named graphs** (no 4-cycle — the substantive regime): all contain a power-of-two cycle:
  Petersen (lens `{5,6,8,9}` → **8**), Heawood (`…8…` → 8), Pappus/Desargues/Möbius–Kantor/
  Dodecahedral (→ **8, 16**). The 8-cycle is what saves the 4-cycle-free graphs.
- **48 random cubic graphs, n=6..16:** every one has a power-of-two cycle (≤16). 0 counterexamples.

## The dyadic framing (what a counterexample must be, and the repo resonance)

A counterexample is a min-degree-≥3 graph whose **cycle-length set misses the entire dyadic ladder**
`{4,8,16,…}`. Since `δ≥3` forces many lengths, it must be a **high-girth, length-spectrum-sparse**

## Notes for the formalizer

(none yet)
