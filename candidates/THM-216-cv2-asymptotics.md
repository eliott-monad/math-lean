---
id: THM-216-cv2-asymptotics
source: 01-canon/theorems/THM-216-cv2-asymptotics.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-216
name: CV² Asymptotics
status: PROVED
proved_by: opus-2026-03-14-S89c
verified_computationally: n=3..21 (exact polynomial match)
---

# THM-216: CV²(H) = 2/n + O(1/n³)

## Statement

For the Hamiltonian path count H over uniformly random tournaments on n vertices:

  CV²(H) = Var(H)/E[H]² = 2/n + O(1/n³)

The 1/n² coefficient vanishes exactly. More precisely:

  CV² = Σ_{k≥1} 2·g_k(n-2k) / (n)_{2k}

where (n)_{2k} is the falling factorial, and the scaled contributions are:
  g₁(m) = m        (dominos)
  g₂(m) = m²       (domino pairs)
  g₃(m) = m(2m²+1)/3   (domino triples)

The 1/n² cancellation: |S|=2 contributes -2/n² and |S|=4 contributes +2/n²,
giving exact cancellation. The leading correction is -14/(3n³) + O(1/n⁴).

## Proof

**Setup.** Let σ be a uniformly random permutation of {0,...,n-1}. Define:
- X_j = 1[σ(j+1) = σ(j)+1]  (unit ascent at position j)
- Y_j = 1[σ(j+1) = σ(j)-1]  (unit descent at position j)
- Z_j = X_j - Y_j ∈ {-1, 0, 1}

Since X_j·Y_j = 0 (cannot have both at same position):

  2^{adj1(σ)} · 1_{NUD}(σ) = ∏_j (1+X_j) · ∏_j (1-Y_j) = ∏_j (1+Z_j)

Therefore W(n)/n! = E[∏_{j=0}^{n-2} (1+Z_j)] and CV² = W(n)/n! - 1.

## Notes for the formalizer

(none yet)
