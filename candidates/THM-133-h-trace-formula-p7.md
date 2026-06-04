---
id: THM-133-h-trace-formula-p7
source: 01-canon/theorems/THM-133-h-trace-formula-p7.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-133
title: H = (462 - tr(A⁴))/2 for Z_7 circulant tournaments — Schur convexity proof of Paley maximization
status: PROVED (algebraic + computational verification)
proved_by: opus-2026-03-12-S58
date: 2026-03-12
related_theorems: [THM-126, THM-130, THM-131]
related_hypotheses: [HYP-464, HYP-465, HYP-468]
tags: [paley, trace-formula, schur-convexity, maximization, eigenvalue]
---

## Main Theorem

**Theorem (THM-133):** For any circulant tournament T on Z_7 with adjacency matrix A:

```
H(T) = (462 - tr(A⁴)) / 2
```

where tr(A⁴) = Σ_{i=0}^{6} (A⁴)_{ii} is the trace of the 4th power of A.

**Verified exhaustively** for all 8 circulant tournaments on Z_7.

**Corollary (Step B at p=7):** The Paley tournament T_7 uniquely maximizes H
among all circulant tournaments on Z_7.

## Proof of the Corollary via Schur Convexity

**Step 1:** For any circulant tournament on Z_p with p ≡ 3 mod 4, all
non-trivial eigenvalues satisfy Re(λ_k) = -1/2. Write λ_k = -1/2 + iy_k.

*Proof:* λ_k + conj(λ_k) = λ_k + λ_{p-k} = Σ_{s∈S} ω^{ks}(1 + ω^{-2ks})
= ... Actually simpler: for tournament, A + A^T = J - I, so eigenvalues of
A + A^T are n-1 (for k=0) and -1 (for k≠0). Since eigenvalues are
λ_k + conj(λ_k) = 2Re(λ_k), we get Re(λ_k) = -1/2 for k ≠ 0.  □

**Step 2:** Parseval constraint: Σ_{k=1}^{p-1} y_k² = (p-1)p/4.

*Proof:* Σ|λ_k|² = Σ(1/4 + y_k²) = (p-1)(p+1)/4 (Parseval for circulant).
So Σy_k² = (p-1)(p+1)/4 - (p-1)/4 = (p-1)p/4.  □

## Notes for the formalizer

(none yet)
