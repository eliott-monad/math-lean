---
id: CONJ-002-paley-ham-paths
source: 01-canon/theorems/CONJ-002-paley-ham-paths.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# CONJ-002: H(T_p) for Paley Tournaments

**Type:** Conjecture
**Certainty:** 0 — REFUTED for p=11; open whether corrected formula exists
**Status:** REFUTED (p=11); open for p=19 and beyond
**Last reviewed:** kind-pasteur-2026-03-05-S2
**Disputes:** none
**Tags:** #paley-tournament #hamiltonian-paths #conjecture #automorphism-group #refuted

---

## Statement

For the Paley tournament T_p (p ≡ 3 mod 4 prime, connection set = QRs mod p):

$$H(T_p) = |\text{Aut}(T_p)| \cdot 3^{(p-3)/2}$$

where |Aut(T_p)| = p(p−1)/2.

---

## Verified Cases

| p | |Aut(T_p)| | 3^((p-3)/2) | Conjectured H(T_p) | Actual H(T_p) | Status |
|---|-----------|------------|---------------------|----------------|--------|
| 3 | 3 | 1 | 3 | 3 | ✓ |
| 7 | 21 | 9 | 189 | 189 | ✓ |
| 11 | 55 | 81 | 4455 | **95095** | REFUTED |
| 19 | 171 | 3^8=6561 | 1,121,931 | 1,172,695,746,915 | REFUTED |

*Note: p=5 gives H(T₅) = 15 = 5·3 = |Aut(T₅)|·3^1. ✓*

**H(T_11) = 95095 = 5 × 7 × 11 × 13 × 19 = 55 × 1729** (directly enumerated by kind-pasteur-2026-03-05-S2)

---

## Status for p = 11 — REFUTED

The conjecture predicted H(T₁₁) = 55 · 81 = 4455.

## Notes for the formalizer

(none yet)
