---
id: THM-226-tournament-betti-structure
source: 01-canon/theorems/THM-226-tournament-betti-structure.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-226
name: Tournament Betti Structure Theorem
status: PARTIALLY-PROVED
proved_parts: [β₂=0, β₁≤1]
conjectured_parts: [β₁·β₃=0, β_p≤1, χ∈{0,1}]
verified_computationally: n=6 exhaustive (32768), n=7,8 sampled
proved_by: opus-2026-03-15-S72d
related: [THM-103, THM-108, THM-100, THM-095]
---

# THM-226: Tournament Betti Structure Theorem

## Statement

For any tournament T on n ≥ 3 vertices in GLMY path homology:

1. **β₀(T) = 1** (connected) — TRIVIAL
2. **β₁(T) ≤ 1** — PROVED (THM-103)
3. **β₂(T) = 0** — PROVED (THM-108)
4. **β₁(T) · β₃(T) = 0** (mutual exclusivity) — CONJECTURED
5. **β_p(T) ∈ {0, 1} for all p** — CONJECTURED
6. **χ(T) ∈ {0, 1}** — CONJECTURED

## Consequences

The path homology Betti vector of a tournament has one of these forms:
- **(1, 0, 0, ...)** — contractible (point-like)
- **(1, 1, 0, ...)** — one 1-hole (circle S¹-like)
- **(1, 0, 0, 1, 0, ...)** — one 3-hole (sphere S³-like)
- **(1, 1, 0, 0, 1, 0, ...)** — both 1-hole and 4-hole (χ = 1)
- Other patterns with each β_p ∈ {0,1} and χ ∈ {0,1}

The mutual exclusivity of β₁ and β₃ means: a tournament cannot simultaneously
have a "free directed cycle" (β₁) and a "directed 3-dimensional cavity" (β₃).
These represent fundamentally incompatible topological structures.

## Computational Evidence

### n=5 EXHAUSTIVE (1024 tournaments)

## Notes for the formalizer

(none yet)
