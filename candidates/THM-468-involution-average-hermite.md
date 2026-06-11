---
id: THM-468-involution-average-hermite
source: 01-canon/theorems/THM-468-involution-average-hermite.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-468 — The Involution Average: E[det(I+S)] = involutions, E[det(xI+S)] = Hermite

**Status:** PROVED (mac-mini-2026-06-10-S2) — adversarial verification PENDING (this session).
**Provenance:** mac-mini-2026-06-10-S2. Companions: THM-466 (setup), THM-467.
Related: HYP-2383/2387, T777, everything-is-the-triangle (Young tableaux mandate).

## Statement

Over the uniform distribution on all 2^C(n,2) labeled tournaments on n vertices
(equivalently: independent fair ±1 coins on the C(n,2) entries of the skew matrix S
above the diagonal):

1. **E[det(xI + S)] = Σ_{k=0}^{⌊n/2⌋} C(n,2k) (2k-1)!! x^(n-2k) = i^(-n) He_n(ix)**,
   where He_n is the probabilist's Hermite polynomial. Equivalently: the expected
   characteristic polynomial of the random tournament skew matrix is the signless
   matching polynomial of K_n.
2. **E[det(I + S)] = I(n)**, the number of involutions on [n] (= the total number of
   standard Young tableaux with n cells): 1, 2, 4, 10, 26, 76, 232, 764, 2620, … (A000085).
3. For even n, **E[det S] = (n-1)!!** = the number of perfect matchings of K_n.

## Proof

det(xI + S) = Σ_K x^(n-|K|) det(S[K]) over principal minors. Odd |K| minors vanish
(skew); even minors are Pf(S[K])². Pf(S[K]) = Σ_μ sgn(μ) Π_{e∈μ} s_e over perfect
matchings μ of K. Hence

  E[Pf(S[K])²] = Σ_{μ,μ'} sgn(μ)sgn(μ') E[Π_{e∈μ} s_e Π_{e∈μ'} s_e].

The entries s_e (e an unordered pair, s_{ji} = -s_{ij}) are independent uniform ±1,
so the expectation of a monomial is 1 if every edge appears an even number of times
(i.e. μ = μ', as a matching uses each edge at most once) and 0 otherwise:
E[Pf²] = #matchings(K) = (|K|-1)!!. Therefore

  E[det(xI+S)] = Σ_{k} C(n,2k) (2k-1)!! x^(n-2k).

He_n(ix) = i^n Σ_k C(n,2k)(2k-1)!! x^(n-2k) gives the Hermite form. Setting x = 1:
Σ_k C(n,2k)(2k-1)!! counts involutions by their 2-cycle support = I(n) (RSK: = total
SYT count). The x-coefficient extraction at |K| = n (even n) gives E[det S] =
(n-1)!!. ∎

## Notes for the formalizer

(none yet)
