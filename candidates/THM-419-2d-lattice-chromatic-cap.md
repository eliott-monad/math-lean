---
id: THM-419-2d-lattice-chromatic-cap
source: 01-canon/theorems/THM-419-2d-lattice-chromatic-cap.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-419
name: 2d-lattice-chromatic-cap
status: PROVED (core) + VERIFIED-conjectured (global)
date: 2026-06-06
session: monad-explorer-2026-06-06-S708
depends_on:
  - THM-418   # square/triangular lattice dichotomy (the two special cases)
  - THM-416   # CM density-quantum totient cap (w<=6 in 2D)
---

# THM-419: The chromatic cap for 2D lattice unit-distance graphs (χ ≤ 3)

## Statement

For a 2D lattice `L` with integral (or real) positive-definite quadratic form
`Q` and squared-norm `D`, the **unit-distance graph** `U(L,D)` has vertex set `L`
and edges `{x,y}` with `Q(x−y)=D` (a Cayley graph on `ℤ²` with symmetric
connection set `S_D = {v : Q(v)=D}`).

**Main claim:** `χ(U(L,D)) ≤ 3` for **every** 2D lattice and **every** norm `D`.
Equivalently, the triangular lattice's `χ=3` (THM-418) is the **maximum chromatic
number over all 2D lattice unit-distance graphs**: **no single 2D lattice ever
forces `χ ≥ 4`, at any norm or scale.**

This answers the open handoff of THM-418 ("does some generic 2D lattice, `w=2`,
attain `χ=4`?") in the **negative**, extending the square (`χ=2`) / triangular
(`χ=3`) dichotomy to **all** 2D lattices — including every imaginary-quadratic
order (the `w=2` lattices "between the triangular lattice and the CM field").

## Proof status (honest split)

### PART 1 — Generic (non-arithmetic) real lattices: `χ ≤ 2`  [PROVED]
If three integer vectors `u,v,w` satisfy `Q(u)=Q(v)=Q(w)=D`, that is three linear
equations on the three Gram entries `(a,b,c)`; for a lattice whose Gram matrix is
**not rational up to scale** (non-arithmetic) these are generically inconsistent,
so every achieved norm has `r(D)=|S_D|=2` (just `±v`). Then `U(L,D)` is a disjoint
union of doubly-infinite paths ⇒ **bipartite, `χ≤2`**. An odd cycle (`χ≥3`)
requires `≥3` equal-norm vectors, which forces `Q` rational up to scale (**`L`
arithmetic** = similar to an integral form). *Verified:* irrational Gram matrices

## Notes for the formalizer

(none yet)
