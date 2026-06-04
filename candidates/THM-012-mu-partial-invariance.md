---
id: THM-012-mu-partial-invariance
source: 01-canon/theorems/THM-012-mu-partial-invariance.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-012: Partial Invariance of mu Under Arc Flips

**Type:** Theorem
**Certainty:** 5 — PROVED (elementary + verified n=5,6)
**Status:** PROVED
**Added by:** opus-2026-03-05-S2
**Tags:** #mu #arc-reversal #invariance #open-q-009

---

## Statement

Let T be a tournament on n vertices, v a vertex, C a directed odd cycle through v, and i->j an arc of T not used in C. Let T' be obtained from T by flipping i->j to j->i.

**If at least one of i, j is in V(C)\{v}**, then mu_T(C) = mu_{T'}(C).

Equivalently: mu(C) is invariant under arc flips where at least one endpoint belongs to C\{v} (provided the arc is not part of the cycle).

---

## Proof

mu(C) = I(Omega(T-v)|_{avoid C\{v}}, 2).

The "available" vertex set is A = V(T-v) \ C\{v} = V\V(C).

The flip changes arc i<->j in T-v (since i,j != v). There are three cases:

**Case 1: Both i,j in C\{v}.** Then i,j are both excluded from A. The sub-tournament T[A] = T'[A] (unchanged). So Omega(T-v)|_{avoid C\{v}} = Omega(T'-v)|_{avoid C\{v}}, and mu is unchanged. (Note: the arc i->j is "not used in C" by hypothesis, but both endpoints are in C.)

**Case 2: Exactly one of i,j in C\{v}, say i in C\{v} and j not in V(C).** Then i is excluded from A but j is in A. The flip changes arc i<->j. Since i is NOT in A, the sub-tournament T[A] is unaffected (the flip involves a vertex outside A). So T[A] = T'[A], and mu is unchanged.

**Case 3: i not in V(C) and j in C\{v}.** Same argument as Case 2 with roles swapped.

In all three cases, the sub-tournament on A is unchanged, so mu(C) = mu'(C). QED.

---

## Non-Invariance When Both Endpoints Outside V(C)

## Notes for the formalizer

(none yet)
