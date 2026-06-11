---
id: THM-418-lattice-chromatic-dichotomy-of-the-plane
source: 01-canon/theorems/THM-418-lattice-chromatic-dichotomy-of-the-plane.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-418
name: lattice-chromatic-dichotomy-of-the-plane
status: PROVED
date: 2026-06-06
session: oracle-2026-06-06-S686
depends_on:
  - HYP-2275   # the Niven/Dehn lattice-escape criterion (Hadwiger needle)
---

# THM-418: Lattice chromatic dichotomy — single 2D lattices never force χ≥4 (Hadwiger-Nelson)

## Statement

For a 2D lattice `L` and squared-norm `D`, the **unit-distance graph** `U(L,D)` has vertex
set `L` and edges `{x,y}` with `|x−y|² = D` (scale the unit to `√D`).

1. **Square lattice `ℤ²`:** `U(ℤ², D)` is **bipartite (χ = 2)** for every `D` (with edges).
2. **Triangular / Eisenstein lattice `ℤ[ω]`** (norm form `Q(a,b)=a²+ab+b²`): `U(ℤ[ω], D)` is
   **exactly 3-chromatic (χ = 3)** for every `D` (with edges).

In particular **neither lattice ever attains χ ≥ 4, at any norm/scale.**

## Proof

**Upper bounds (proper colorings of the *infinite* lattice graph).**

*Square.* Colour `c(a,b) = (a+b) mod 2`. An edge is a vector `(s,t)` with `s²+t²=D`. If `D`
is **odd**, exactly one of `s,t` is odd, so `s+t` is odd and `c` changes across every edge —
a proper 2-colouring. If `D` is **even**, every norm-`D` vector has `s≡t (mod 2)`, so the
norm-`D` vectors lie in the index-2 sublattice `{a≡b mod 2}`, which is `√2·ℤ²` rotated 45°
(scaled-similar to `ℤ²`); the graph splits into 2 disjoint copies of `U(ℤ², D/2)`. **2-adic
recursion** on `D` terminates at an odd `D'`, where the colouring is proper. So `χ ≤ 2`.

*Triangular.* Colour `c(a,b) = (a−b) mod 3`. Since `a²+ab+b² ≡ (a−b)² (mod 3)`, a norm-`D`
vector has `a≡b (mod 3)` **iff** `3 | D`. If `3 ∤ D`, every edge vector has `(a−b)≢0`, so `c`
changes across every edge — a proper 3-colouring. If `3 | D`, all norm-`D` vectors lie in the
index-3 sublattice `Λ' = {a≡b mod 3}`, which is `√3·`(rotated triangular lattice),
scaled-similar to `ℤ[ω]`; the graph splits into 3 disjoint copies of `U(ℤ[ω], D/3)`. **3-adic
recursion** terminates at `3 ∤ D'`. So `χ ≤ 3`.

## Notes for the formalizer

(none yet)
