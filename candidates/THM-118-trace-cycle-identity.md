---
id: THM-118-trace-cycle-identity
source: 01-canon/theorems/THM-118-trace-cycle-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-118: Trace-Cycle Identity for Tournaments

**Status:** PROVED
**Proved by:** kind-pasteur-2026-03-07-S39b
**Verified computationally:** n=3-6 exhaustive (all tournaments), n=7 sampled (2000), 0 failures

---

## Statement

For any tournament T on n vertices with adjacency matrix A:

**tr(A^k) = k * c_k(T)  for k = 3, 4, 5**

where c_k(T) is the number of directed k-cycles in T.

Equivalently:
- c_3(T) = tr(A^3) / 3
- c_4(T) = tr(A^4) / 4
- c_5(T) = tr(A^5) / 5

This does NOT hold for k >= 6 (compound walks exist: 3+3=6 at n=5, 3+4=7 at n=6).

---

## Proof

In a tournament, A[i][j] * A[j][i] = 0 for all i != j (no bidirectional edges). Therefore:
- Any closed walk has length >= 3 (no self-loops: length >= 2; no 2-cycles: length >= 3).
- More precisely, closed walks of length 1 require self-loops (impossible) and length 2 require bidirectional edges (impossible in tournaments).

**Claim:** Every closed walk of length k <= 5 in a tournament is a simple directed cycle (visits k distinct vertices).

**Proof of claim:** Suppose a closed walk w_0, w_1, ..., w_k (w_k = w_0) of length k visits some vertex v at positions i and j (0 <= i < j < k). This splits the walk into two closed sub-walks:
- Walk 1: w_i, w_{i+1}, ..., w_j (length j - i)
- Walk 2: w_j, w_{j+1}, ..., w_k, w_0, ..., w_i (length k - (j - i))

Both are closed walks in the tournament, hence both have length >= 3. So k = (j-i) + (k-j+i) >= 3 + 3 = 6.

For k = 3, 4, or 5: no vertex repetition is possible (would require k >= 6). So the walk visits exactly k distinct vertices and is a simple directed cycle.

## Notes for the formalizer

(none yet)
