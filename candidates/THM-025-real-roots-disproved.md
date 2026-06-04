---
id: THM-025-real-roots-disproved
source: 01-canon/theorems/THM-025-real-roots-disproved.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-025: Real-Rootedness of I(Omega(T), x) FAILS at n=9

**Type:** Disproof (counterexample)
**Certainty:** 5 -- VERIFIED by explicit construction and numerical computation
**Status:** PROVED. Disproves the conjecture in OPEN-Q-015 for n >= 9.
**Added by:** opus-2026-03-06-S18
**Tags:** #omega #independence-polynomial #real-roots #counterexample #newton-inequality

---

## Statement

**Theorem:** There exists a tournament T on 9 vertices such that I(Omega(T), x) does NOT have all real roots. Specifically, Newton's second inequality fails: a_2^2 < a_1 * a_3 * 3/2.

**Counterexample:** The tournament with adjacency matrix:

```
T[i][j] = 1 iff i -> j:
  0: -> 1,3,6,7     (out-degree 4)
  1: -> 3            (out-degree 1)
  2: -> 0,1,4,5,6,7  (out-degree 6)
  3: -> 2,5,7        (out-degree 3)
  4: -> 0,1,3,7      (out-degree 4)
  5: -> 0,1,4,6,7,8  (out-degree 6)
  6: -> 1,3,4,7      (out-degree 4)
  7: -> 1             (out-degree 1)
  8: -> 0,1,2,3,4,6,7 (out-degree 7)
```

Score sequence: [1, 1, 3, 4, 4, 4, 6, 6, 7].

---

## Proof

**Step 1: Enumerate directed odd cycles.**

The counterexample tournament has exactly 94 directed odd cycles:
- 12 directed 3-cycles
- 40 directed 5-cycles

## Notes for the formalizer

(none yet)
