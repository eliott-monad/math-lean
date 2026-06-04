---
id: THM-017-even-odd-split-proof
source: 01-canon/theorems/THM-017-even-odd-split-proof.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-017: B(Li, Rj) = B(Lj, Ri) — Full Proof

**Type:** Theorem
**Certainty:** 5 — PROVED
**Status:** PROVED (induction on |W|, using THM-016)
**Added by:** opus-2026-03-05-S4
**Tags:** #even-odd-split #signed-adjacency #ocf #proof #induction

---

## Statement

For any weighted tournament T on n vertices with arc i→j, define the alternating subset convolution:

  B(Li, Rj) = sum_{S ⊆ W} (-1)^|S| Li(S ∪ {i}) · Rj({j} ∪ (W\S))

where W = V\{i,j}, Li(A) = h_end(T, A, i) (Ham paths on A ending at i),
Rj(A) = h_start(T, A, j) (Ham paths on A starting at j).

**Theorem:** B(Li, Rj) = B(Lj, Ri) for all tournaments T and all arcs i→j.

This holds as a **polynomial identity** in the arc variables.

---

## Proof

**By induction on m = |W| = n − 2.**

**Base cases:** m = 0 (n=2): B = 1 on both sides. m = 1 (n=3): follows from T[a][b]+T[b][a]=1.

**Inductive step:** Assume B(Li,Rj) = B(Lj,Ri) for all tournaments with fewer than m internal vertices.

### Setup

Reparametrize the interface arcs: for each w ∈ W, define
- s_w = 1 − p_w − q_w (where p_w = T[w][i], q_w = T[j][w])
- d_w = p_w − q_w

The difference D = B(Li,Rj) − B(Lj,Ri) is the change under σ: p_w ↦ 1−q_w, q_w ↦ 1−p_w.

## Notes for the formalizer

(none yet)
