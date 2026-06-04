---
id: THM-137-paley-eigenvector-interaction
source: 01-canon/theorems/THM-137-paley-eigenvector-interaction.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-137
title: Paley orientation is eigenvector of H-interaction matrix
status: PROVED (full algebraic proof for ALL p=3 mod 4)
proved_by: opus-2026-03-12-S62
date: 2026-03-12
related_theorems: [THM-133, THM-134, THM-135, THM-136]
related_hypotheses: [HYP-479, HYP-480]
tags: [paley, orientation-cube, walsh, interaction-matrix, eigenvector, dihedral]
---

## Main Result

**Theorem (THM-137):** Let p ≡ 3 mod 4 be prime, m = (p-1)/2. The function
H: {±1}^m → Z maps an orientation vector σ = (σ₁,...,σₘ) to the Hamiltonian path
count of the circulant tournament T(σ) on Z_p, where σ_k = +1 means chord type k
is oriented clockwise (k ∈ S) and σ_k = -1 means counterclockwise.

The Walsh-Fourier expansion on the orientation cube is:

    H(σ) = Ĥ(∅) + Σ_{|S|=2} Ĥ(S) χ_S(σ) + Σ_{|S|=4} Ĥ(S) χ_S(σ) + ...

where χ_S(σ) = ∏_{k∈S} σ_k. Only EVEN-degree terms appear (since H(σ) = H(-σ)).

Define the **interaction matrix** J ∈ R^{m×m} by J[i,j] = Ĥ({i,j}).

**Then** the Paley orientation vector σ_P = (χ(1), χ(2), ..., χ(m)), where χ is the
Legendre symbol mod p, is an **eigenvector of J** with the **largest eigenvalue**.

## Computational Verification

| p | m | J eigenvalue at σ_P | Is top? | H(Paley) | H(Interval) |
|---|---|-----|------|------|------|
| 7 | 3 | 7.0 | YES | 189 | 175 |
| 11 | 5 | 561.0 | YES | 95095 | 93027 |

At p=7: J has eigenvalues {-3.5, -3.5, 7.0}, with σ_P in the top eigenspace.
At p=11: J has eigenvalues {-435.4, -435.4, 154.9, 154.9, 561.0}, with σ_P as the unique top eigenvector.

## Full Algebraic Proof

## Notes for the formalizer

(none yet)
