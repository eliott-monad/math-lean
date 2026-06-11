---
id: THM-471-general-shape-miniatures-m2-m3-probe
source: 01-canon/theorems/THM-471-general-shape-miniatures-m2-m3-probe.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# THM-471: the B3 general-shape enumerator — first Schipperus-forced cutoffs, the XOR quotient, and the m=3 (open-case) probe

**Status:** parts A–C PROVED (tuple grammar = faithful miniaturization; finder
completeness; XOR-quotient linearity); part D COMPUTED (statuses inline; UNSAT
verdicts sound independently of finder completeness — see C2). Implements
POKE Task 1.2 (THM-460 line 150's "general-shape recursive enumerator").
**Source:** kind-pasteur-2026-06-11-S1 (HYP-2394/2395). Scripts
`04-computation/erdos592_shape_miniatures_kp0611.py`,
`04-computation/erdos592_shape_xor_quotient_kp0611.py` (+ .out files).

## A. The tuple grammar (PROVED faithful to THM-460 B2/B3)

Exponents are tuples δ ∈ N^m (δ[i] = CNF coefficient of ω^i). Ambient
A(m; s, c) = functions [s]^m → [c]; positions sorted most-significant-first by
reversed-tuple lex, so value-tuple lex order = largest-disagreement order and
list index order = ambient order (the m=1 invariants of THM-460 D survive).

  Bin(0) = point.
  FINITE peel (least nonzero index 0): two Bin(δ−e₀) halves A < B, ONE common
    cross-split position for all cross pairs, internal splits strictly less
    significant.
  LIMIT peel (least nonzero index i ≥ 1): M order-separated parts
    Bin((δ−e_i) + j·1 on positions 0..i−1), j marching.
  BT(m,M) = order-separated parts Bin((j,…,j)), j marching.

Faithfulness: ω^δ = ω^(δ−e_{i₀}) · ω^(ω^{i₀}) by CNF peeling; B2 at rank i₀
turns the index structure into a tower whose part exponents embed in positions
0..i₀−1 — exactly the limit production. The finite production is THM-453's
ordered-sum pruning. March conventions: **j1** (j = 1..M; faithful to THM-460
D's m=1 games) and **j0** (j = 0..M−1; the truncated march, with the j=0 part a
single point). At m=1 the checker coincides with is_binary_grid (verified: 0
mismatches over all 4-subsets of [3]³).

**Size analysis (the miniature-design table; m≥2 sizes compound through limit
peels):** |BT| at (m,M): m=2: j1 = 4 (M=1), 156 (M=2); j0 = 7 (M=2). m=3:
j1 = 16 (M=1), **3,506,256 (M=2 — vacuous in every feasible ambient**, the m≥3
analogue of THM-460 D's vacuousness guard — this is WHY the probe ladder must
use M=1-j1 and the j0 truncation); j0 = 43 (M=2).

## B. Finder architecture and completeness (PROVED)

## Notes for the formalizer

(none yet)
