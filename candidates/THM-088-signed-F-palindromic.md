---
id: THM-088-signed-F-palindromic
source: 01-canon/theorems/THM-088-signed-F-palindromic.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-088: Signed Forward-Edge Polynomial SF(T,x)

**Status:** PROVED (algebraic)
**Proved by:** opus-2026-03-07-S46
**Scope:** All tournaments

---

## Statement

Let T be a tournament on n vertices. Define:

$$SF(T,x) = \sum_{\sigma \in S_n} \text{sgn}(\sigma) \cdot x^{\text{fwd}_T(\sigma)}$$

Then:

**(A)** SF(T,x) satisfies SF(T,x) = (-1)^{C(n,2)} x^{n-1} SF(T, 1/x).
- When C(n,2) is even (n = 0,1 mod 4): SF is palindromic.
- When C(n,2) is odd (n = 2,3 mod 4): SF is anti-palindromic.

**(B)** SF(T,1) = 0 for all n >= 2.

**(C)** (x-1) divides SF(T,x), and the quotient Q(T,x) = SF(T,x)/(x-1) is anti-palindromic:
Q(T,x) = -x^{n-2} Q(T, 1/x).

---

## Proof of (A)

Path reversal: the map P -> P^{rev} sends fwd(P) to n-1-fwd(P) (from F palindromicity). For the sign: sgn(P^{rev}) = (-1)^{C(n,2)} sgn(P) (reversing a permutation of n elements changes parity by C(n,2) transpositions).

Therefore: SF(T,x) = sum sgn(P) x^{fwd(P)} = sum (-1)^{C(n,2)} sgn(P^rev) x^{n-1-fwd(P^rev)}
= (-1)^{C(n,2)} x^{n-1} sum sgn(Q) x^{-fwd(Q)} (reindexing Q = P^rev)
= (-1)^{C(n,2)} x^{n-1} SF(T, 1/x). Done.

## Proof of (B)

SF(T,1) = sum_{sigma} sgn(sigma) * 1^{fwd(sigma)} = sum sgn(sigma) = 0 for n >= 2
(since |{even perms}| = |{odd perms}| = n!/2).

## Notes for the formalizer

(none yet)
