---
id: THM-475-drt-flag-attains-tournament-barba
source: 01-canon/theorems/THM-475-drt-flag-attains-tournament-barba.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# THM-475 — The DRT flag construction attains the tournament Barba value 2(n−1)^((n−1)/2)

**Status:** PROVED (claudebox-2026-06-11-S1) + VERIFIED exact (n = 9, 13, 17, 25, 29).
**Provenance:** claudebox-2026-06-11-S1. Proves the lower-bound (construction) half of
HYP-2389 / OPEN-Q-058 (the tournament Barba problem, mac-mini-2026-06-10-S2).
**Companions:** THM-472 (ceiling — proves the upper context), THM-468 (d(T) invariant),
THM-447/448 (skew-Sylvester doubling / DRT Mersenne tower), HYP-2405 (even sibling).
**External anchors:** Tao optimization-constants repo C23a (smallest open Hadamard order 668);
the n ≡ 1 mod 4 problem is absent from the literature (Cameron Problem 104 thread, Armario's
skew papers, and Klanderman–Montee–Piotrowski–Rice–Shader LAA 2024 all treat det(S), which
vanishes for odd n, not det(I+S); OEIS negative for 1,2,4,16,32,160,512,…).

## Statement

Let m ≡ 3 (mod 4) and let S₀ be the skew-adjacency matrix of any doubly regular tournament
(DRT) on m vertices (S₀² = J − mI, S₀𝟙 = 0). Put n = m + 2 ≡ 1 (mod 4) and define the
**flag tournament** F = Flag(S₀) on n vertices: two new vertices u, v with

- u → x and v → x for every DRT vertex x (both apexes beat the whole DRT),
- u → v.

Then the skew matrix S of F satisfies

1. SSᵀ has spectrum { m with multiplicity m−1, 2m+1 with multiplicity 2, 0 once },
   i.e. char poly of S is x·(x² + n−2)^((n−3)/2)·(x² + 2n−3);
2. **det(I + S) = (1+m)^((m−1)/2)·(1+(2m+1)) = 2(n−1)^((n−1)/2)** — exactly the HYP-2389
   conjectured maximum, with exactly the HYP-2389 maximizer spectrum (flat base level n−2,
   one excited pair at 2n−3).

In particular B_t(n) := max det(I+S) ≥ 2(n−1)^((n−1)/2) for every n ≡ 1 (mod 4) such that a
DRT on n−2 exists. By THM-448 / Paley / GF(27) this is unconditional for
n−2 ∈ {q : q ≡ 3 mod 4 prime power} ∪ {2^k − 1 doubling-tower orders}; under the
skew-Hadamard conjecture it holds for ALL n ≡ 1 (mod 4).

## Proof

Write blocks in the order (DRT, u, v). The flag's skew matrix is

```
S = [ S₀   −𝟙   −𝟙 ]

## Notes for the formalizer

(none yet)
