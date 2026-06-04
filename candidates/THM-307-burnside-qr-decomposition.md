---
id: THM-307-burnside-qr-decomposition
source: 01-canon/theorems/THM-307-burnside-qr-decomposition.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-307: Burnside-QR Decomposition of T(p) mod p

**Status:** PROVED
**Found by:** opus-2026-04-05-S25
**Verified in:** `04-computation/qr_tournament_enumeration_s25.py`

## Statement

For every odd prime p:

**T(p) ≡ f_p - (2/p)·w_p - A_p (mod p)**

where:
- f_p = (2^{(p-1)/2} - (2/p))/p is the **Euler quotient of 2**
- w_p = ((p-1)! + 1)/p is the **Wilson quotient**
- A_p = (1/p) sum_{lambda != (p), (1^p)} (p!/z_lambda) 2^{e(lambda)} is the **remaining Burnside sum**
- (2/p) is the Legendre symbol

## Proof

The Burnside formula gives p! * T(p) = sum over all-odd partitions lambda of n:

**Term 1** (identity, lambda = (1^p)):
  Contribution: 2^{C(p,2)}.
  Mod p²: ≡ (2/p) by THM-306.

**Term 2** (p-cycle, lambda = (p)):
  Contribution: (p-1)! * 2^{(p-1)/2}.
  By Wilson: (p-1)! ≡ -1 (mod p), so (p-1)! = -1 + p*w_p.
  By Euler: 2^{(p-1)/2} ≡ (2/p) (mod p), so 2^{(p-1)/2} = (2/p) + p*f_p.
  Product mod p²: (-1 + pw_p)((2/p) + pf_p) = -(2/p) + p((2/p)w_p - f_p) + p²(...)
  So mod p²: ≡ -(2/p) + p((2/p)w_p - f_p).

**Term 3** (all others):
  For lambda != (1^p) and lambda != (p): v_p(z_lambda) = 0 (no part = p, no multiplicity >= p).
  So p | (p!/z_lambda), hence p | each remaining term. Sum = p * A_p.

**Combining:**
  p! * T(p) = (2/p) + [-(2/p) + p((2/p)w_p - f_p)] + p*A_p + O(p²)
            = p((2/p)w_p - f_p + A_p) + O(p²)

## Notes for the formalizer

(none yet)
