---
id: THM-489-eta-discriminant-bridge
source: 01-canon/theorems/THM-489-eta-discriminant-bridge.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-489: the η-discriminant bridge — the code discriminant is the pentagonal product, and the extremal-enumerator correction is secular (−42m), not two-rate

**Status:** PROVED (the −42m law, part B) + VERIFIED EXACT (parts A,C: independent
agent's η/θ computation, all asserts passed; my extremal-enumerator build,
n = 24m up to m = 154, exact integers). Scripts
`04-computation/extremal_enumerator_bridge_kps3_0611.py`,
`verify_eta_dictionary_agentr.py` (+ .out).
**Source:** kind-pasteur-2026-06-11-S3 (HYP-2419/2420). Bridges THM-488 (the
pentagonal Lyapunov theme) to THM-481/484 (the Gleason/Paley code line) and the
MOS extremal-enumerator theory. **CORRECTS HYP-2420's mechanism guess.**

## A. The code discriminant IS the modular discriminant (VERIFIED)

Under Construction A (W ↦ Θ via x = θ₃(q²), y = θ₂(q²)):
* W_{ê₈} = x⁸ + 14x⁴y⁴ + y⁸ ↦ E₄(q²) (verified to q¹⁰⁰).
* **The Gleason second-axis discriminant P₂₄ = x⁴y⁴(x⁴−y⁴)⁴ ↦ 16·η(q²)²⁴ = 16·Δ**
  — the CODE discriminant is exactly the modular discriminant, the 24th power of
  the pentagonal product Δ = q·Π(1−qⁿ)²⁴ (proof chain θ₂θ₃θ₄ = 2η³, θ₃⁴ = θ₂⁴+θ₄⁴,
  θ₄ = η²/η(q²) — each step series-verified; the (4,4,16) exponent pattern is
  exactly what lands on level 1 / SL₂(ℤ), vs (8,8,2) → level 2).
* W_{g₂₄} = W_{ê₈}³ − 42·P₂₄ (exact in ℤ[x,y]).

So the same pentagonal product that drives the partition function (THM-488,
1/Π(1−qⁿ)) is the second generator of the Type II weight-enumerator ring, in its
24th power. The Gleason ring is ℂ[E₄-image, Δ-image] = ℂ[W_{ê₈}, P₂₄], and P₂₄ is
η²⁴ in disguise.

## B. The extremal correction is SECULAR: c₁(m) = −42m (PROVED)

The extremal Type II enumerator at length n = 24m is
  W_n = Σ_{j=0}^{m} c_j · W_{ê₈}^{3(m−j)} · P₂₄^{j},  c₀ = 1,
the c_j fixed by the extremal conditions A₄ = A₈ = … = A_{4m} = 0 (minimum weight
4m+4). The basis is lower-triangular (P₂₄^j starts at y^{4j}), so the c_j solve
forward.

**Theorem.** The leading discriminant-correction coefficient is exactly
  **c₁(m) = −42m**  for every m ≥ 1.
Proof. The A₄ = 0 condition reads c₀·[A₄ of W_{ê₈}^{3m}] + c₁·[A₄ of P₂₄·W_{ê₈}^{3(m−1)}] = 0.
W_{ê₈}^{3m} = (1 + 14φ + φ²)^{3m} with φ = y⁴-monomial; its linear-in-φ
coefficient is 3m·14 = 42m. P₂₄ = x⁴y⁴(x⁴−y⁴)⁴ has lowest term x²⁰y⁴ (coefficient

## Notes for the formalizer

(none yet)
