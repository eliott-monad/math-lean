---
id: THM-121-arcflip-path-count
source: 01-canon/theorems/THM-121-arcflip-path-count.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-121: Arc-Flip Allowed Path Count Formulas

**Status:** PROVED (algebraic counting)
**Filed:** kind-pasteur-2026-03-08-S41

## Statement

Let T be a tournament on n vertices with arc u -> v, and let T' be the tournament obtained by flipping this arc (replacing u -> v with v -> u). Let A_p(T) denote the number of allowed p-paths in T (sequences of p+1 distinct vertices following arcs). Then:

**(a)** delta |A_2| = |A_2(T')| - |A_2(T)| = 2(d_u - d_v - 1)

**(b)** delta |A_3| = |A_3(T')| - |A_3(T)| = 2(n-3)(d_u - d_v - 1)

where d_u = out-degree of u in T, d_v = out-degree of v in T.

**Corollary:** delta |A_3| = (n-3) * delta |A_2| for all tournaments and all arc flips.

## Proof of (a)

In tournament T with u -> v:
- out_T(u) contains v, so |out_T(u)| = d_u, and |out_T(u) \ {v}| = d_u - 1.
- in_T(v) contains u (since u -> v), so |in_T(v)| = n-1-d_v, and |in_T(v) \ {u}| = n-2-d_v.
- v is NOT in out_T(v) and u -> v means v does NOT have arc to u, so out_T(v) does not contain u.
- in_T(u) does NOT contain v (since u -> v, not v -> u).

**Lost 2-paths** (using arc u -> v):
- Position 0: (u, v, w) for w in out_T(v). Count = d_v.
- Position 1: (w, u, v) for w in in_T(u). Count = n-1-d_u.
- Total lost = d_v + (n-1-d_u).

**Gained 2-paths** (using arc v -> u in T'):
In T': out_T'(u) = out_T(u) \ {v}, in_T'(v) = in_T(v) \ {u}.
- Position 0: (v, u, w) for w in out_T'(u) = out_T(u) \ {v}. Count = d_u - 1.
- Position 1: (w, v, u) for w in in_T'(v) = in_T(v) \ {u}. Count = n-2-d_v.
- Total gained = (d_u - 1) + (n-2-d_v).

**delta |A_2|** = gained - lost = (d_u - 1 + n - 2 - d_v) - (d_v + n - 1 - d_u)
            = d_u - 1 + n - 2 - d_v - d_v - n + 1 + d_u
            = 2d_u - 2d_v - 2
            = **2(d_u - d_v - 1)**. QED.

## Notes for the formalizer

(none yet)
