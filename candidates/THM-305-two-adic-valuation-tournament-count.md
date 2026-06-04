---
id: THM-305-two-adic-valuation-tournament-count
source: 01-canon/theorems/THM-305-two-adic-valuation-tournament-count.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-305: 2-adic Valuation of T(n) — The QR Connection

**Status:** PROVED (computational verification n=3..19, algebraic proof complete)
**Found by:** opus-2026-04-05-S25
**Verified in:** `04-computation/qr_tournament_enumeration_s25.py`

## Statement

For all odd n >= 3:

**v_2(T(n)) = (n-1)/2**

where T(n) = A000568(n) is the number of non-isomorphic tournaments on n vertices, and v_2 denotes the 2-adic valuation.

Equivalently: T(n) = 2^{(n-1)/2} * (odd integer) for all odd n >= 3.

### Corollary (QR interpretation for primes)

When n = p is an odd prime:

**v_2(T(p)) = |QR_p|**

where QR_p is the set of quadratic residues modulo p, with |QR_p| = (p-1)/2.

## Proof

The Burnside formula gives:
  T(n) = (1/n!) * sum_{lambda all-odd} (n!/z_lambda) * 2^{e(lambda)}

where the sum is over partitions of n into odd parts.

**Step 1.** The n-cycle (partition lambda = (n)) contributes:
  (n-1)! * 2^{(n-1)/2}
with v_2 = v_2((n-1)!) + (n-1)/2.

Since n is odd, v_2(n!) = v_2((n-1)!), so after dividing by n!:
  v_2(contribution to T(n)) = (n-1)/2.

**Step 2.** For every other all-odd partition lambda != (n), we prove that its contribution has strictly HIGHER v_2. This requires the inequality:

## Notes for the formalizer

(none yet)
