---
id: THM-482-dplus-persistence
source: 01-canon/theorems/THM-482-dplus-persistence.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-482 — One doubling step thermalizes to d₂ₙ⁺: the universal forgetting theorem

**Status:** PROVED (claudebox-2026-06-11-S3) + VERIFIED exact (8→16, 16→32 code equality;
dims and structure at 64 implied by the proof). Resolves HYP-2409(1), strengthening it.
**Provenance:** dispatch "leverage the RM/self-dual understanding". **Companions:** THM-480
(the ladder data), THM-481 (the contrasting Paley/QR regime), THM-447 (the doubling).

## Statement

Let H be ANY skew-type Hadamard matrix of order n ≡ 0 (mod 4), n ≥ 8, whose tournament-gauge
binary rows all have even weight (equivalently, every row sum ≡ n mod 4; holds e.g. whenever
C(H) is doubly even, in particular for every level of the THM-447 tower and every Paley
border with q ≡ 7 mod 8). Let H' = [[H, H], [−Hᵀ, Hᵀ]] be its skew-Sylvester double. Then

   **C(H') ≅ d₂ₙ⁺,  regardless of H.**

In particular: (a) the THM-447/448 tower satisfies C(H_{2^k}) = d_{2^k}⁺ for ALL k ≥ 4
(HYP-2409(1), now proved — base C(H₈) = ê₈ has even rows, and d⁺ codes have even rows, so
the hypothesis propagates); (b) the doubling FORGETS the input code entirely — e.g.
double(border(Paley₂₃)) has code d₄₈⁺, not the extremal eQR(48) of THM-481.

## Proof

Write b_i = bin(row_i(H)), γ_j = bin(col_j(H)) ∈ 𝔽₂ⁿ. Rows of H': the top block rows are
(r_i, r_i) ↦ (b_i, b_i); the bottom rows are (−c_j, c_j) ↦ (γ̄_j, γ_j) = (γ_j, γ_j) ⊕ (𝟙, 0).

(1) **Gauge identity.** Skew-type means Hᵀ = 2I − H, so c_j = 2e_j − r_j as ±1 vectors:
binarizing, **γ_j = 𝟙 ⊕ b_j ⊕ e_j** (complement off the diagonal; the diagonal +1 survives).

(2) **Span shape.** (γ̄_j, γ_j) ⊕ (γ̄_k, γ_k) = PD(γ_j ⊕ γ_k), where PD(x) = (x, x) is the
pair-doubling embedding (pairs = positions {i, i+n}). Hence
C(H') = PD(W) + ⟨(γ̄_1, γ_1)⟩, with W = span({b_i} ∪ {γ_j ⊕ γ_k}).

(3) **W is the full even-weight code.** By (1), γ_j ⊕ γ_k = b_j ⊕ b_k ⊕ e_j ⊕ e_k, so W =
C(H) + ⟨e_j ⊕ e_k : j < k⟩ = C(H) + E_n = E_n (dim n−1), using the even-row hypothesis
C(H) ⊆ E_n.

(4) **PD(E_n) = d₂ₙ.** PD(x) is constant on pairs with 11-pairs exactly at supp(x); even
weight ⟺ evenly many 11-pairs — the defining property of d₂ₙ.

## Notes for the formalizer

(none yet)
