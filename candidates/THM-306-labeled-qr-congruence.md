---
id: THM-306-labeled-qr-congruence
source: 01-canon/theorems/THM-306-labeled-qr-congruence.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-306: Labeled QR Congruence

**Status:** PROVED
**Found by:** opus-2026-04-05-S25
**Verified in:** `04-computation/qr_tournament_enumeration_s25.py`

## Statement

For every odd prime p:

**2^{C(p,2)} ≡ (2/p) (mod p²)**

where (2/p) is the Legendre symbol and C(p,2) = p(p-1)/2.

In words: the total number of labeled tournaments on p vertices is congruent to the Legendre symbol of 2 modulo p-squared.

## Proof

Write C(p,2) = p(p-1)/2. Then:

2^{p(p-1)/2} = (2^{(p-1)/2})^p

By the Euler criterion: 2^{(p-1)/2} ≡ (2/p) (mod p).

So 2^{(p-1)/2} = (2/p) + p·k for some integer k.

**Case (2/p) = 1:** 2^{(p-1)/2} = 1 + pk. Then:
  (1 + pk)^p = 1 + C(p,1)·pk + C(p,2)·(pk)² + ...
  ≡ 1 + p²k (mod p²)  [since C(p,1)·pk = p²k, higher terms have p³|...]
  ≡ 1 = (2/p) (mod p²). CHECK.

**Case (2/p) = -1:** 2^{(p-1)/2} = -1 + pk. Then:
  (-1 + pk)^p = (-1)^p + C(p,1)·(-1)^{p-1}·pk + ...
  = -1 + p²k + O(p³)   [since p is odd, (-1)^p = -1, (-1)^{p-1} = 1]
  ≡ -1 = (2/p) (mod p²). CHECK.

In both cases: (2^{(p-1)/2})^p ≡ (2/p) (mod p²). QED.

## Interpretation

## Notes for the formalizer

(none yet)
