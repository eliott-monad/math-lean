---
id: THM-502-the-closed-walk-census-ladder-and-coefficient-law
source: 01-canon/theorems/THM-502-the-closed-walk-census-ladder-and-coefficient-law.md
source_commit: 8058679
status: open
---

## Informal statement

---
id: THM-502
title: The closed-walk census ladder — tr(A^k) = sum over connected cycle-configs of (k/period)*embeddings; gives the exact decompositions for k<=8 and the spectral-horizon conservation law
status: PROVED (coefficient law: rigorous rooting argument; explicit formulas k<=8: verified exact on 300+ random tournaments at n=8, normal-equation exact-rational fits; k=9 coefficient-structure verified 80/80, full triple-config enumeration OPEN)
source: monad-explorer-2026-06-14
depends_on:
  - THM-118   # c_k = tr(A^k)/k for k <= 5
  - THM-499   # first spectral boundary: H non-spectral from n=6 via alpha_2
  - THM-500   # second spectral boundary: alpha_1 non-spectral from n=7 via c7/TQ
related:
  - HYP-2498  # codex: tr(A^6) = 6 c6 + 3 c3 + 6 p33_meet
  - OPEN-Q-093
---

# THM-502 — the closed-walk census ladder and the k/period coefficient law

THM-499/THM-500 located two "spectral boundaries" — where the eigenvalue spectrum
loses the OCF count `H` (n=6) and then the bare odd-cycle count `alpha_1` (n=7). Both
breaks were traced to a *trace decomposition*: `tr A^6 = 6c6 + 3c3 + 6 p33` (codex
HYP-2498) and `tr A^7 = 7(c7 + TQ)` (THM-500). This theorem gives the **single
principle** behind every such decomposition, the **explicit complete formulas through
k=8**, and the **conservation law** that makes the spectral horizon transparent.

## The coefficient law (proved)

In a tournament, the diagonal of `A^k` counts **rooted closed k-walks** (a closed
walk with a marked starting step), and `tr A^k` sums them. Loop-erasing a closed walk
returns a multiset of simple directed cycles whose lengths **partition k**, every part
`>= 3` (a tournament has no 1- or 2-cycles), and which are pairwise **overlapping**
(a single closed walk is connected — vertex-disjoint cycles cannot lie on one walk).
Call such a connected multiset of cycles a **configuration** `C` of total length k.

> **Coefficient law.** `tr A^k = Σ_{configs C, |C| = k}  rot(C) · emb_T(C)`, where
> `emb_T(C)` is the number of embeddings of `C` into `T` and `rot(C) = k / period(C)`
> is the number of distinct cyclic rotations of the closed-walk edge-word that traces
> `C`. Equivalently `rot(C)` = number of distinct rooted closed walks with reduced
> shape `C`.

*Proof of the law.* A rooted closed k-walk is a cyclic edge-word of length k with a
marked position; `tr A^k` counts these. Group them by reduced shape `C`. Words with

## Notes for the formalizer

(none yet)
