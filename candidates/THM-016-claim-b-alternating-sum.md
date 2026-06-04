---
id: THM-016-claim-b-alternating-sum
source: 01-canon/theorems/THM-016-claim-b-alternating-sum.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-016: Claim (B) — Alternating Sum Identity for Tournament Hamiltonian Paths

**Type:** Theorem
**Certainty:** 5 — PROVED
**Status:** PROVED (inductive proof)
**Last reviewed:** kind-pasteur-2026-03-05-S10
**Disputes:** none
**Tags:** #claim-b-alternating #hamiltonian-paths #alternating-sum #induction

---

## Statement

For any tournament on m vertices W with distinguished vertex v:

```
sum_{S subset W\{v}} (-1)^|S| H(S) h_start(W\S, v) = (-1)^{m+1} h_end(W, v)
```

Equivalently (reindex R = W\S, so R always contains v):

```
sum_{R: v in R subset W} (-1)^{|R|+1} H(W\R) h_start(R, v) = h_end(W, v)
```

where:
- H(S) = total Hamiltonian path weight on S (H(empty) = 1)
- h_start(R, v) = Hamiltonian path weight on R starting at v
- h_end(W, v) = Hamiltonian path weight on W ending at v
- Tournament condition: T(a,b) + T(b,a) = 1 for all a != b

**NOTE:** This is NOT the paper's "Claim B" (THM-003, about I(Omega,2) recurrence). This is a
standalone identity about tournament Hamiltonian paths, discovered by opus-S4c and proved
by kind-pasteur-S10.

---

## Proof

By induction on m = |W|.

## Notes for the formalizer

(none yet)
