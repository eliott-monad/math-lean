---
id: THM-402-round-tournaments-are-2-dichromatic
source: 01-canon/theorems/THM-402-round-tournaments-are-2-dichromatic.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-402
title: Round (locally-transitive) tournaments are 2-dichromatic; χ is constant (=2) on the LRC-tight set
status: PROVED
source: opus-2026-06-03-S592
depends_on:
  - HYP-2133   # LRC accessible tournaments are round (S591)
related:
  - THM-401    # the additive (interval) modulus
---

# THM-402 — round tournaments are 2-dichromatic; χ ≡ 2 on the LRC-tight set

## Statement

Let `T` be a **round** (equivalently *locally transitive*: every out- and in-
neighbourhood induces a transitive subtournament) tournament on `m` vertices. Then its
**dichromatic number** (the least number of transitive parts covering the vertices)
satisfies
```
χ(T) ≤ 2,   with χ(T) = 1  iff  T is transitive,  and  χ(T) = 2  iff  T has a 3-cycle.
```
Consequently `χ` is **constant** on every set of round non-transitive tournaments — in
particular on the **LRC-tight set** (all of whose members are round and contain a
3-cycle): `χ ≡ 2`.

## Proof

A round tournament is realizable on the circle: there exist distinct angles
`θ_1,…,θ_m ∈ ℝ/ℤ` with `i → j` iff the clockwise arc from `θ_i` to `θ_j` is `< 1/2`
(Moon; this is the standard characterization of locally transitive tournaments).

Choose a diameter of the circle through no point `θ_i` (possible since the points are
finite). It splits `{θ_i}` into two open semicircles `A` and `B`. Take any two vertices
`u, w ∈ A` with `θ_u` before `θ_w` in clockwise order *within* `A`. Since both lie in a
common semicircle, the clockwise arc `θ_u → θ_w` is `< 1/2`, so `u → w`. Hence the
clockwise order on `A` is a linear order realizing `T[A]` as **transitive**; likewise
`T[B]`. So `{A, B}` is a partition into two transitive parts and `χ(T) ≤ 2`.

`χ(T)=1` iff `T` is transitive (no 3-cycle). If `T` has a 3-cycle it is not transitive,

## Notes for the formalizer

(none yet)
