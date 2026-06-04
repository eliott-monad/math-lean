---
id: THM-020-real-roots
source: 01-canon/theorems/THM-020-real-roots.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-020: Real Roots of I(Omega(T), x)

**Type:** PROVED for n<=8, DISPROVED at n>=9 (THM-025 counterexample).
**Certainty:** 5 — PROVED for n<=8 via Chudnovsky-Seymour; DISPROVED at n>=9.
**Status:** PROVED for n<=8. DISPROVED at n>=9 (THM-025).
**Added by:** kind-pasteur-2026-03-05-S13
**Tags:** #omega #independence-polynomial #real-roots #claw-free #chudnovsky-seymour

---

## Statement

**Theorem (n<=8):** For every tournament T on n<=8 vertices, all roots of the independence polynomial I(Omega(T), x) are real and negative.

**Conjecture (general n):** For every tournament T on n vertices, all roots of I(Omega(T), x) are real and negative.

---

## Proof for n<=8

**Step 1:** Omega(T) is claw-free for n<=8.

A claw (K_{1,3}) in Omega(T) requires a central odd cycle C0 adjacent to three pairwise non-adjacent cycles C1, C2, C3. "Non-adjacent" means vertex-disjoint; "adjacent to C0" means sharing a vertex. So C1, C2, C3 are pairwise vertex-disjoint odd cycles, each sharing at least one vertex with C0. Since each odd cycle has >= 3 vertices and C1, C2, C3 are pairwise disjoint, they use >= 9 vertices total. Therefore no claw exists for n<=8.

**Step 2:** By the Chudnovsky-Seymour theorem (J. Combin. Theory Ser. B, 2007), the independence polynomial of any claw-free graph has only real roots.

**Step 3:** Since all coefficients of I(Omega(T), x) are non-negative (they count independent sets) and I(Omega(T), 0) = 1 > 0, all real roots must be negative.

**Corollary:** I(Omega(T), x) > 0 for all x >= 0 and all tournaments T on n<=8 vertices. In particular, H(T) = I(Omega(T), 2) >= 1, giving an alternative proof of Redei's theorem for n<=8.

---

## Status at n>=9 — DISPROVED

**DISPROVED (opus-2026-03-06-S18, THM-025):** I(Omega(T), x) does NOT always have real roots at n=9. Explicit counterexample: tournament with score sequence [1,1,3,4,4,4,6,6,7], giving I(Omega, x) = 1 + 94x + 10x^2 + x^3. Newton's inequality fails at k=2 (100 < 141).

The n<=8 result (this theorem) remains valid. The claw-free bound n<=8 is sharp.

---

## Notes for the formalizer

(none yet)
