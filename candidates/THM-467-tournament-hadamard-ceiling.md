---
id: THM-467-tournament-hadamard-ceiling
source: 01-canon/theorems/THM-467-tournament-hadamard-ceiling.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-467 — The Tournament Hadamard Ceiling: det(I+S) maxima are DRT switching classes

**Status:** PROVED (mac-mini-2026-06-10-S2) — adversarial verification PENDING (this session).
**Provenance:** mac-mini-2026-06-10-S2. Companions: THM-466 (floor, setup and notation),
THM-468 (average). Related: THM-447/448 (skew tower), THM-213 (Paley Pfaffian),
the-drt-engine-is-S-squared-equals-J-minus-nI reflection, HYP-2385.

## Statement

Let T be a tournament on n vertices, S = A - A^T. Then:

1. **(odd n)** det(I+S) ≤ (n+1)^((n-1)/2), with equality iff T is a switching of a
   doubly regular tournament (DRT). In particular the bound is attained iff a DRT on
   n vertices exists, iff a skew-Hadamard matrix of order n+1 exists (Reid–Brown);
   attainment requires n ≡ 3 (mod 4) (or n = 1).
2. **(even n)** det(I+S) ≤ n^(n/2) (the Hadamard bound, since I+S has ±1 entries),
   with equality iff S S^T = (n-1) I (S is a **skew conference matrix**), which
   requires n ≡ 0 (mod 4) or n = 2, and happens iff I+S is a skew-Hadamard matrix
   of order n.
3. The maximizing set of d(T) = det(I+S)/2^(n-1) is, at orders where the relevant
   bound is attained, a UNION OF FULL SWITCHING CLASSES of DRTs (odd n) /
   skew-conference cores (even n).

## Proof

Eigenvalues of a real skew matrix S come in purely imaginary pairs ±iμ_j (μ_j > 0),
plus a kernel; say p pairs, so det(I+S) = Π_{j=1}^{p} (1 + μ_j²) ≥ 0 and
Σ_j 2μ_j² = tr(S S^T) = Σ_{i≠j} S_ij² = n(n-1), i.e. **Σ_{j=1}^p μ_j² = n(n-1)/2**.

By AM-GM, Π (1+μ_j²) ≤ (1 + n(n-1)/(2p))^p. The function p ↦ p·log(1 + c/p) is
strictly increasing in p (its derivative log(1+c/p) - (c/p)/(1+c/p) > 0 for c > 0),
so the bound is maximized at the largest possible p:

- **odd n**: p ≤ (n-1)/2 (skew odd-dimensional always has a kernel), giving
  det(I+S) ≤ (1 + n)^((n-1)/2).
- **even n**: p ≤ n/2, giving det(I+S) ≤ (1 + (n-1))^(n/2) = n^(n/2).

**Equality, odd n:** requires p = (n-1)/2 (kernel exactly 1-dimensional) and all
μ_j² = n. Then S S^T (symmetric PSD, integer) has eigenvalues n with multiplicity
n-1 and 0 with multiplicity 1: S S^T = nI - n vv^T with v a unit kernel vector.

## Notes for the formalizer

(none yet)
