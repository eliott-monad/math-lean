---
id: THM-209-independence-polynomial
source: 01-canon/theorems/THM-209-independence-polynomial.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-209: H = Independence Polynomial of Odd-Cycle Disjointness Graph at x=2

**Status:** VERIFIED (exhaustive n=3..7, sampled n=8: 5K, n=9: 5K, n=10: 200), PROOF NEEDED
**Found by:** opus-2026-03-14-S89b
**Verified in:** `04-computation/crown_jewel_verify_89b.py`, `04-computation/ip_verify_n7n8.c`, `04-computation/ip_sample_n9_large_89b.py`, `04-computation/ip_sample_n10_fixed_89b.py`

## Statement

For a tournament T on n vertices, let OddCyc(T) denote the set of all directed odd cycles in T (as vertex sets). Define the **odd-cycle disjointness graph** G(T):
- Vertices = directed odd cycles in T
- Edges = cycles sharing at least one vertex

Then:

**H(T) = IP(G(T), 2)**

where IP(G, x) = Σ_{k≥0} i_k(G) · x^k is the **independence polynomial** of G, and i_k(G) is the number of independent sets of size k in G (i.e., collections of k pairwise vertex-disjoint odd cycles).

Equivalently:

**H(T) = Σ_{S ⊆ OddCyc(T), pairwise disjoint} 2^|S|**

## Explicit Formulas by n

The formula simplifies because vertex-disjoint cycle collections are limited by n:

| n | Maximum |S| | Formula | New terms vs n-1 |
|---|---------|---------|-----------|
| 3 | 1 | H = 1 + 2·t₃ | t₃ |
| 4 | 1 | H = 1 + 2·t₃ | (same, t₅ impossible) |
| 5 | 1 | H = 1 + 2·t₃ + 2·t₅ | t₅ |
| 6 | 2 | H = 1 + 2·t₃ + 2·t₅ + 4·d₃₃ | d₃₃ (disjoint 3-pairs, need 6 verts) |
| 7 | 2 | H = 1 + 2·(t₃+t₅+t₇) + 4·d₃₃ | t₇ |
| 8 | 2 | H = 1 + 2·(t₃+t₅+t₇) + 4·(d₃₃+d₃₅) | d₃₅ (need 8 verts) |
| 9 | 3 | H = 1 + 2·Σt_{2k+1} + 4·Σd_{ij} + 8·d₃₃₃ | t₉, d₃₃₃ (need 9 verts) |

where:
- t_k = number of directed k-cycles
- d_{ij} = number of vertex-disjoint (i-cycle, j-cycle) pairs
- d₃₃₃ = number of vertex-disjoint 3-cycle triples

## Notes for the formalizer

(none yet)
