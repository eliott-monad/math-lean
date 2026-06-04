---
id: PROP-001-arc-flip-identity
source: 01-canon/theorems/PROP-001-arc-flip-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# PROP-001: Arc-Flip Identity (Equivalent to OCF/Claim A)

**Type:** Theorem (PROVED — follows from OCF)
**Certainty:** 5 — PROVED for all n
**Status:** PROVED (corollary of OCF / Grinberg-Stanley)
**Last reviewed:** kind-pasteur-2026-03-05-S12
**Tags:** #arc-flip #ocf #claim-a #proof-strategy

---

## Statement

For any tournament T on n vertices, any arc i->j in T, let T' be the tournament
obtained by flipping arc i->j to j->i. Then:

```
H(T') - H(T) = I(Omega(T'), 2) - I(Omega(T), 2)
```

Equivalently, E(T) := H(T) - I(Omega(T), 2) is invariant under arc flips.

---

## Why This Implies OCF and Claim A

1. E(transitive tournament) = 1 - 1 = 0.
2. Any tournament is reachable from the transitive tournament by arc flips.
3. If E is invariant under arc flips, then E(T) = 0 for all T.
4. E(T) = 0 means H(T) = I(Omega(T), 2), which is the OCF formula.
5. OCF + Claim B (proved) => Claim A. (See Corollary in paper.)

---

## Algebraic Decomposition of delta_I

When flipping arc i->j to j->i:

**Lost cycles:** odd cycles C of T using arc i->j. All contain {i,j}, forming a clique in Omega(T).
**Gained cycles:** odd cycles C' of T' using arc j->i. All contain {i,j}, forming a clique in Omega(T').
**Common cycles:** odd cycles existing in both T and T' (not using i->j or j->i).

## Notes for the formalizer

(none yet)
