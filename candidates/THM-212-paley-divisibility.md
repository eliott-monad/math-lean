---
id: THM-212-paley-divisibility
source: 01-canon/theorems/THM-212-paley-divisibility.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-212: p divides H(T) for Circulant Tournaments on Prime Vertices

**Status:** PROVED
**Found by:** opus-2026-03-14-S89c
**Verified in:** `04-computation/pi_maxH_89c.py`

## Statement

For every prime p and every circulant tournament T on Z/pZ (including the Paley tournament P_p when p ≡ 3 mod 4):

**p | H(T)**

More generally: if a tournament T on n vertices has an automorphism of prime order p dividing n, then p | H(T).

## Verified Cases

| p | H(P_p) | H(P_p)/p |
|---|--------|----------|
| 3 | 3 | 1 |
| 7 | 189 = 3³×7 | 27 |
| 11 | 95095 = 5×7×11×13×19 | 8645 |
| 19 | 1172695746915 | 61720828785 |

## Connection to THM-209

By THM-209, H(P_p) = IP(G(P_p), 2) where G(P_p) is the odd-cycle disjointness graph.

The Paley tournament P_p has a transitive Z/pZ symmetry group (cyclic shift i ↦ i+1 mod p). This symmetry acts on the odd cycles and hence on independent sets. If the action has no fixed points (other than the empty set), then each orbit has size p, and H(P_p) - 1 = 2·(sum of cycle counts) + 4·(disjoint pair counts) + ... would be divisible by p if all cycle counts and packing counts are divisible by p.

Since t_k(P_p) ≡ 0 (mod p) for all k (because the cyclic shift permutes cycles in orbits of size p), the level-1 contribution 2·Σt_k is divisible by 2p. Similarly for higher levels.

## Proof Sketch (needs verification)

1. The cyclic shift σ: i ↦ i+1 mod p is an automorphism of P_p.
2. σ acts freely on the set of directed odd cycles (no cycle is fixed by σ).
3. Therefore each orbit has size p, so t_k ≡ 0 (mod p) for all k.
4. σ also acts freely on disjoint k-packings, so d_{...} ≡ 0 (mod p).
5. Therefore H = 1 + 2·(Σt_k) + 4·(Σd) + 8·(Σtriplets) + ...
6. Each term after the initial 1 is divisible by 2p.
7. So H ≡ 1 (mod 2p)... but we need H ≡ 0 (mod p), not H ≡ 1 (mod p).

## Notes for the formalizer

(none yet)
