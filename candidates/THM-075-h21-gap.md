---
id: THM-075-h21-gap
source: 01-canon/theorems/THM-075-h21-gap.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-075: H=21 is a Permanent Gap in the Tournament H-spectrum

**Type:** Theorem (partial) / Strong Conjecture
**Certainty:** 4 -- PROVED for n <= 7, strong evidence for all n
**Status:** PROVED through n=7 (exhaustive), conjectured for all n. See THM-079-h21-component-reduction.md for the complete proof framework for ALL n.
**Added by:** opus-2026-03-07-S38
**Tags:** #converse-redei #h-spectrum #permanent-gap #ocf

---

## Statement

**Theorem (n <= 7):** There is no tournament T on n <= 7 vertices with H(T) = 21.

**Conjecture (all n):** There is no tournament T on any number of vertices with H(T) = 21. That is, 21 is a permanent gap in the H-spectrum of tournaments, like 7 (proved by THM-029).

---

## Proof for n <= 7

**Exhaustive computation.** All tournaments on n vertices for n = 3, 4, 5, 6, 7 were enumerated and H(T) computed via Held-Karp DP.

| n | Total tournaments | H=21 found? | Achievable H near 21 |
|---|---|---|---|
| 3 | 8 | No | max H = 3 |
| 4 | 64 | No | max H = 5 |
| 5 | 1,024 | No | {1,3,5,9,11,13,15} |
| 6 | 32,768 | No | ...17, 19, [GAP], 23, 25... |
| 7 | 2,097,152 | No | ...17, 19, [GAP], 23, 25... |

At n=7, 77 distinct odd H values are achieved, ranging from 1 to 189. H=21 is NOT among them. The gap from 19 to 23 is consistent across n=6 and n=7.

---

## OCF Constraint Analysis

By OCF, H(T) = 1 + 2*alpha_1 + 4*alpha_2 + 8*alpha_3 + ... where alpha_k = number of independent sets of size k in Omega(T).

For H = 21, we need 2*alpha_1 + 4*alpha_2 + ... = 20, giving decompositions:
- (alpha_1=10, alpha_2=0)

## Notes for the formalizer

(none yet)
