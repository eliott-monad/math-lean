---
id: THM-454-blowup-product-and-lift-laws
source: 01-canon/theorems/THM-454-blowup-product-and-lift-laws.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-454 (renumbered twice: 449 -> 453 -> 454; both prior numbers were concurrently claimed by mac-mini-2026-06-09-S1, whose claims stand) — H(T[K₂]): strong-component product law, twin-lift cycle laws, and the failure of odd-cycle determination

**Status:** Product law PROVED (sketch below) + VERIFIED 74/74 iso classes n=3..6. Lift laws
VERIFIED 74/74 (c7' coefficient 128 analytic-only — c7=0 at n≤6, flagged). IP-determination
REFUTED with exact counterexample. Adversarially re-verified with three independent Hamiltonian
counters including a full 10! permutation scan (`verify_A_H_formula_kps1.out`).
**Source:** kind-pasteur-2026-06-09-S1 (branch A + verifier). Directly answers OPEN-Q-045 Q1.
**Related:** THM-447, OPEN-Q-045, OCF (THM-002), HYP-2334 (resolved into this), HYP-2353.

## (1) REFUTED: I(Ω(T), x) does NOT determine H(T[K₂])

Counterexample (n=5): idx4 (bits 0001000000, scores (1,1,2,3,3)) vs idx6 (bits 0101000000,
scores (2,1,1,3,3)). Both have IP = 1 + 4x AND the same length-typed IP (three 3-cycles, one
5-cycle), yet H(T[K₂]) = 3225 vs 2785. **Cause: the odd-cycle conflict graph omits EVEN cycles
(c4 = 3 vs 2), and even cycles of T become odd cycles of T[K₂] via twin insertion.** The
doubling is a parity mixer: OCF data of T is insufficient for OCF data of T[K₂].

## (2) PROVED: the strong-component product law

```
H(T[K₂]) = ∏_{C nontrivial strong component of T} H(C[K₂])
```

Proof sketch: the strong components of T[K₂] are exactly C[K₂] for |C| ≥ 2 plus the twin pairs
of vertices in singleton components; the condensation is transitive; Hamiltonian paths of a
tournament factor over the transitive chain of strong components (Moon). Verified 74/74
(e.g. n=6 idx26 = disjoint union of two 3-cycles: H = 45² = 2025). **This — not the IP — explains
the cross-n collisions** H(T[K₂]) ∈ {1, 45, 393, …}: every tournament whose only nontrivial
strong component is a single 3-cycle gets H(T[K₂]) = 45 at EVERY n.
NOTE: the product law FAILS for D_skew and SC-blowup (they hold only trivially in the 43
all-strong classes; both doublings strongly connect across components).

## (3) VERIFIED 74/74: twin-lift laws for the odd cycles of T[K₂]

Odd cycles of T[K₂] = twin-decorated lifts of closed walks of T with vertex multiplicity ≤ 2:
```
c3' = 8·c3
c5' = 32·c5 + 32·c4 + 6·c3
c7' = 128·c7 + 192·c6 + 80·c5 + 8·c4 + 64·p331 + 48·p332 + 64·p341 + 32·p342
```

## Notes for the formalizer

(none yet)
