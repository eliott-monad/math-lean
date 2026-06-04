---
id: THM-008b-mu-triviality-general
source: 01-canon/theorems/THM-008b-mu-triviality-general.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-008b: General mu Triviality Bound (generalizes THM-008)

**Type:** Theorem
**Certainty:** 5 — PROVED (elementary + exhaustive verification)
**Status:** PROVED
**Last reviewed:** opus-2026-03-05-S2
**Generalizes:** THM-008 (extends from 3-cycles at n<=5 to all L-cycles with L >= n-2)
**Disputes:** none
**Tags:** #mu-triviality #n5-mystery #open-q-001 #claim-a

---

## Statement

**Theorem (mu triviality bound).** Let T be a tournament on n vertices, v a vertex, and C a directed odd L-cycle through v. Then:

```
mu(C) = 1   whenever   L >= n - 2.
```

In particular:
- At n <= 5, mu(C) = 1 for ALL directed odd cycles C through v (both 3-cycles and 5-cycles).
- At n <= 7, mu(C) = 1 for all directed 5-cycles C through v.
- The first n at which mu(3-cycle) can exceed 1 is n = 6.
- The first n at which mu(5-cycle) can exceed 1 is n = 8.

---

## Proof

By definition, mu(C) = I(Omega(T-v)|_{avoid C\{v}}, 2).

The conflict graph Omega(T-v)|_{avoid C\{v}} is built on directed odd cycles of T-v that are vertex-disjoint from C\{v}. Such cycles must use vertices from the "available" set:

```
Available = V(T-v) \ C\{v}
|Available| = (n-1) - (L-1) = n - L
```

An odd cycle requires at least 3 vertices. If |Available| < 3, i.e., n - L < 3, i.e., L > n - 3, i.e., L >= n - 2 (since L is odd and n-2 could be even, but the condition L > n-3 suffices), then no odd cycles exist among the available vertices. The conflict graph is empty, and I(empty, 2) = 1.

## Notes for the formalizer

(none yet)
