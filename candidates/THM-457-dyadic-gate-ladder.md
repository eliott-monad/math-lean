---
id: THM-457-dyadic-gate-ladder
source: 01-canon/theorems/THM-457-dyadic-gate-ladder.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-457 — The Dyadic Gate Ladder: closing each power-of-2 cycle gate inflates the next (Erdős 64 hunt, exact small-order frontiers)

**Status:** VERIFIED computationally with double-checked counts (own DFS checker ≡
networkx.simple_cycles on all anchors); literature web-verified; SA-search results are
lower-bound evidence (search floors), exhaustive results marked EXACT. Erdős–Gyárfás remains
OPEN and unchallenged. Adversarially re-verified (verifier issues were reporting-level only;
see `dyadic_branch3_summary_kps2.out`).
**Source:** kind-pasteur-2026-06-09-S2 (branch III + verifier). Resolves HYP-2359's program;
corrects an S710 premise (MISTAKE-069).
**Related:** THM-445/446 (E-G + Sidon ladder), THM-456 (twin-free/Turán corridor reframe).

## (1) Corrections to the repo record (MISTAKE-069)

- **McGee (n=24, girth 7) is NOT C₈-free: it has 34 eight-cycles.** S710's "McGee → C16"
  reported the first power-of-2 cycle in enumeration order, not the smallest. (Petersen has
  15 eight-cycles, not 10.) Anchor census (own checker ≡ networkx): Petersen 57 cycles
  (c5=12, c6=10, c8=15, c9=20); Heawood 213 (c6=28, c8=21); McGee 5608 (c7=32, c8=34, c9=16);
  Tutte–Coxeter 41400 (c8=90 = its girth cycles).

## (2) The girth ladder of C₈-avoidance (min order of a cubic C₈-free graph with girth ≥ g)

```
g=3 (C4-free): 24 EXACT (Markström's four classes, all girth 3, rediscovered + collected)
g=5:           28 EXACT (new: ≥2 iso classes found by SA, 3-connected, nx-verified;
                          no girth-5 specimen exists at n≤26 — all 4 classes at 24 and all
                          23 at 26 are forced to girth 3)
g=6:           ≤ 32 (specimen with c16=925, c32=87)
g=7:           > 46 by SA floors (18/13/7/2/1 at n=30/34/38/42/46)
g≥8:           C8-free forces girth ≥ 9 → 58 EXACT ((3,9)-cages)
```

## (3) The LADDER PRINCIPLE (the session's structural finding)

Each closed dyadic gate inflates the next: within {girth ≥ 5, C₈-free}, min #C16 GROWS
monotonically (614 at n=28 → 970 at n=40), and the stratum is nearly frozen under
girth-preserving edge switches. No {8,16}-avoider exists anywhere at n ≤ 40 in the search;
{4,8,16}-freedom is PROVABLY empty below n=54 (Markström's unpublished f(4) ≥ 54, known via
Exoo's remark) and first realized at n=78 (Exoo's G78) — **and the reconstructed G78-type
graphs immediately contain C32** (both iso classes; one also C64) — new data beyond Exoo 2014.
The f-ladder (min order of a cubic graph avoiding {4, 8, …, 2^k}): f(2)=10, f(3)=24,

## Notes for the formalizer

(none yet)
