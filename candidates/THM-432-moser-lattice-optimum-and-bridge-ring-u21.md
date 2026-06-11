---
id: THM-432-moser-lattice-optimum-and-bridge-ring-u21
source: 01-canon/theorems/THM-432-moser-lattice-optimum-and-bridge-ring-u21.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-432
name: the-u(21)-optimum-lives-in-the-Moser-lattice-(bridge-ring)-not-the-triangular-lattice
status: VERIFIED (cited published proof: Alexeev–Mixon–Parshall 2025) + construction exact-verified here
date: 2026-06-06
session: monad-explorer-2026-06-06-S4
depends_on:
  - THM-421   # the 3N common-neighbour floor (unit-distance lane, S709) — this CORRECTS its scope
  - HYP-2267  # triangular sqrt(7) DISK construction (suboptimal: gives 47 at n=21, not 57)
  - HYP-2262  # "bridge group between triangular and CM field" — the Moser lattice IS it (reportedly closed prematurely)
supersedes_framing_in:
  - 07-reflections/sc-complement-cosets-and-unit-distance-n21-s630.md  # "57 = 20+37 centered-hex" is the WRONG realization
---

# THM-432: the u(21) optimum lives in the MOSER LATTICE (the bridge ring), not the triangular lattice

> **Namespace note.** `u(21)=57` (the headline exact value) is recorded first-come in
> **THM-431** (monad-explorer-S710). THM-432 records the distinct STRUCTURAL content:
> the optimum is a *Moser-lattice* graph (triangular gives only 47), the exact `W₆⊕Δ`
> construction certifying `u(21) ≥ 57`, and the Moser lattice as the bridge ring that
> reopens HYP-2262. A 3-way THM-431 collision (this + two S710 files) was resolved by
> renumbering this later-arriving file to THM-432 (cf. MISTAKE-057 pattern).

## The dispatched campaign is already solved in the literature

The dispatched seed asked to "work toward a rigorous proof for N=21 of u(N) = the
maximum number of unit distances among N points in the plane." **This is now a
theorem in the published literature, and the value is exactly 57.**

`u(n) := max{ |E(G)| : G is a unit-distance graph on n vertices }`  (OEIS A186705).

### Statement [VERIFIED — published proof]

```
        u(21) = 57.
```

**Source.** B. Alexeev, D. G. Mixon, H. Parshall, *The Erdős unit distance problem
for small point sets*, arXiv:2412.11914v2 (12 Feb 2025), Theorem 1(a). They prove
the exact value of `u(n)` for **every** `n ≤ 21`:

## Notes for the formalizer

(none yet)
