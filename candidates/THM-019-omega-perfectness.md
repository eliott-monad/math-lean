---
id: THM-019-omega-perfectness
source: 01-canon/theorems/THM-019-omega-perfectness.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-019: Omega(T) Perfectness — FAILS at n=8

**Type:** Observation (DISPROVED as universal statement)
**Certainty:** 5 — COUNTEREXAMPLE FOUND at n=8
**Status:** DISPROVED for general n. Holds for n<=7.
**Added by:** kind-pasteur-2026-03-05-S12 (original), opus-2026-03-05-S7 (disproved)
**Tags:** #omega #perfect-graph #independence-polynomial #structure

---

## Statement (CORRECTED)

~~For every tournament T on n vertices, the conflict graph Omega(T) is a perfect graph.~~

**DISPROVED at n=8 by opus-2026-03-05-S7.** At n=8, 53.8% of random tournaments have
an induced C5 (5-hole) in the 3-cycle conflict subgraph of Omega(T), making Omega(T)
imperfect. An explicit counterexample is constructed below.

**Corrected statement:** Omega(T) is perfect for all tournaments on n<=7 vertices.

---

## Verification Record

| n | Tournaments tested | Non-perfect cases | Method |
|---|-------------------|-------------------|--------|
| 5 | 1,024 (all) | 0 | exhaustive |
| 6 | 2,000 (sample) | 0 | random sample |
| 7 | 1,000 (random) | 0 | C5 search in 3-cycle conflict graph |
| 8 | 1,000 (random) | 538 (53.8%) | C5 search in 3-cycle conflict graph |
| 9 | 100 (random) | 30 (30%) | full Omega perfectness check |

## Counterexample at n=8

Forced arcs creating a C5 in Omega(T):
- C1 = (0,1,5): 0->1->5->0
- C2 = (2,1,5): 2->1->5->2
- C3 = (2,3,6): 2->3->6->2
- C4 = (3,4,7): 3->4->7->3
- C5 = (0,4,7): 0->4->7->0

## Notes for the formalizer

(none yet)
