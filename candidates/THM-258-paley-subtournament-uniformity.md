---
id: THM-258-paley-subtournament-uniformity
source: 01-canon/theorems/THM-258-paley-subtournament-uniformity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-258: Paley Sub-Tournament Uniformity Theorem

**Status:** PROVED (computational, p=7 and p=11)
**Filed by:** kind-pasteur-2026-03-20-S1

## Statement

For Paley tournaments T_p (p = 3 mod 4 prime), the sub-tournament structure is
dramatically more uniform than for the interval tournament I_p. Specifically:

### p=11 Sub-Tournament Uniformity Comparison

| Subset size k | Paley CV(H_k) | Interval CV(H_k) | Paley # distinct H | Interval # distinct H |
|---------------|---------------|-------------------|---------------------|----------------------|
| 5 | 34.6% | 39.0% | 5 | 4 |
| 7 | 10.7% | 31.2% | 4 | 8 |
| 9 | **0.0%** | 15.6% | **1** | 5 |

### p=7 Sub-Tournament Uniformity (from THM-257)

| Subset size k | Paley CV(H_k) | Type II CV(H_k) | Type III CV(H_k) |
|---------------|---------------|-----------------|-----------------|
| 5 | **0.0%** | 20.8% | 14.9% |

## Key Discovery: Perfect Uniformity Cascade

**Paley T_7:** ALL 21 five-vertex sub-tournaments have H=13 (zero variance).
**Paley T_11:** ALL 55 nine-vertex sub-tournaments have H=2879 (zero variance).

The pattern: perfect uniformity occurs at subset size k = p-2 = n-2.

**Conjecture:** For all Paley primes p, every (p-2)-vertex sub-tournament of T_p
has the same H value. (Verified: p=7 with H_5=13, p=11 with H_9=2879.)

## Mechanism: Uniformity Maximizes Total Cycles

The total directed odd cycle count is the sum of directed Hamiltonian cycles
over all odd-size vertex subsets:

    alpha_1 = sum_{k odd, S in C(p,k)} c_k(T_p[S])

## Notes for the formalizer

(none yet)
