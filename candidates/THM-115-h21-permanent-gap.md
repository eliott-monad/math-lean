---
id: THM-115-h21-permanent-gap
source: 01-canon/theorems/THM-115-h21-permanent-gap.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-115: H=21 Permanent Gap Conjecture

**Status:** CONJECTURED (exhaustive through n=7, sampling through n=9). See THM-079-h21-component-reduction.md for the complete proof framework for ALL n.
**Discovered by:** kind-pasteur-2026-03-07-S31

## Statement

**Conjecture:** For any tournament T on any number of vertices n, H(T) != 21.

Equivalently: there is no tournament whose conflict graph Omega(T) has independence
polynomial I(Omega(T), x) satisfying I(Omega(T), 2) = 21.

## Evidence

### Exhaustive verification

| n | Total tournaments | H=21 found? | Gaps below H=50 |
|---|-------------------|-------------|-----------------|
| 4 | 8 | N/A (max H=5) | none |
| 5 | 1,024 | NO | {7} |
| 6 | 32,768 | NO | {7, 21, 35, 39} |
| 7 | 2,097,152 | NO | {7, 21} only |

### Sampling verification

| n | Samples | H=21 found? |
|---|---------|-------------|
| 8 | 100,000 | NO |
| 9 | 50,000 | NO |

### Transient vs permanent gaps

The n=6 gaps at H=35 and H=39 are **filled** at n=7. The n=7 gaps at H=63, 107, 119
are **filled** at n=8 (sampling). Only H=7 and H=21 persist across all tested n.

## Structural Analysis

### Multiplicative monoid from non-overlapping flips

For the transitive tournament with a single edge flip of "range" k (flipping edge (i, i+k)):

## Notes for the formalizer

(none yet)
