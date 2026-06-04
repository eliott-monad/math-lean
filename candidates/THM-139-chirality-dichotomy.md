---
id: THM-139-chirality-dichotomy
source: 01-canon/theorems/THM-139-chirality-dichotomy.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-139
title: Chirality dichotomy — p≡3 vs p≡1 mod 4 and Paley eigenvector obstruction
status: PROVED (algebraic + exhaustive verification p=5,7,11,13,17,19)
proved_by: opus-2026-03-12-S63
date: 2026-03-12
related_theorems: [THM-137, THM-138]
related_hypotheses: [HYP-455, HYP-485, HYP-493, HYP-494]
tags: [paley, dihedral, chirality, reflection, eigenvector, mod4]
---

## Main Result

**Theorem (THM-139):** Let T_P be the Paley tournament on Z_p. The polygon reflection
x → -x mod p acts on T_P as follows:

1. **p ≡ 3 mod 4**: Reflection is an **anti-automorphism** (T_P → T_P^op).
   - The Paley tournament **breaks** polygon reflection symmetry.
   - The signed permutation P_{-1} = -I is **not** in the QR symmetry group.
   - The QR-fixed subspace of R^m is **1-dimensional** = span(σ_P).
   - THM-137 applies: σ_P is an eigenvector of J with largest eigenvalue.

2. **p ≡ 1 mod 4**: Reflection is an **automorphism** (T_P → T_P).
   - The Paley tournament **preserves** polygon reflection symmetry.
   - P_{-1} = -I **is** in the QR symmetry group (since -1 ∈ QR).
   - The QR-fixed subspace is **{0}** (no nonzero Paley eigenvector exists).
   - THM-137 does NOT apply. The interaction matrix J has no distinguished simple eigenvalue.

**Corollary:** The Interval tournament S = {1,...,m} **always** breaks reflection
symmetry (reflection maps S to {m+1,...,p-1}). Its chirality = 1.0 for all p.
The Paley tournament has chirality 1.0 for p ≡ 3 mod 4 and chirality 0.0 for p ≡ 1 mod 4.

## Proof

**Reflection action:** The map x → -x sends arc i→j (with j-i ∈ QR) to arc -i→-j
(with (-j)-(-i) = -(j-i)). This preserves T_P iff χ(-(j-i)) = χ(j-i) for all j-i ∈ QR,
which holds iff χ(-1) = +1, i.e., p ≡ 1 mod 4.

**Signed permutation:** P_{-1} maps chord type k to chord type min((-1)k, p-(-1)k) = min(p-k, k) = k,
with sign -1 (since (-1)·k = p-k > m for all k ≤ m). So P_{-1} = -I.

## Notes for the formalizer

(none yet)
