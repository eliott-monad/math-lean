---
id: THM-291-mode-b-multilinear-recursion
source: 01-canon/theorems/THM-291-mode-b-multilinear-recursion.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-291: Mode B Recursion for the Multilinear Polynomial

**Status:** PROVED (algebraic + verified n=3→5, 4→6, 5→7)
**Filed by:** opus-2026-04-04-S4
**Depends on:** THM-284, OCF

## Statement

The multilinear polynomial H_{n+2} decomposes as:

  **H_{n+2}(t_inner, t_boundary) = H_n(t_inner) + Δ_n(t_inner, t_boundary)**

where:
- **t_inner**: the C(n-1,2) overlap tiles = tiles of the n-tournament on inner vertices {2,...,n+1}
- **t_boundary**: the 2n-1 boundary tiles:
  - **Bottom wiring** (n-2 tiles): (x, 1) for x = 3,...,n connecting vertex 1 to inner vertices
  - **Top wiring** (n-2 tiles): (n+2, y) for y = 2,...,n-1 connecting vertex n+2 to inner vertices
  - **Apex** (1 tile): (n+2, 1) connecting vertex 1 to vertex n+2
- **Δ_n**: the boundary correction, involving at least one boundary tile in every term

The key identity: **H_{n+2}(t_inner, 0) = H_n(t_inner)** for all inner tilings.

## Proof

Setting all boundary tiles to 0 (forward):
- All arcs (x, 1) go forward: x → 1 for x = 3,...,n+2. Vertex 1 is beaten by all.
- All arcs (n+2, y) go forward: (n+2) → y for y = 1,...,n. Vertex n+2 beats all.
- Apex (n+2, 1) forward: (n+2) → 1.
- Base path: (n+2) → (n+1) → ... → 1.

In this tournament:
- Vertex n+2 is a SOURCE (beats all n+1 others via base path + forward tiles)
- Vertex 1 is a SINK (beaten by all n+1 others)
- The inner vertices {2,...,n+1} form a tournament determined by t_inner

Every Hamiltonian path must start at n+2 (only source) and end at 1 (only sink).
The middle portion (n+2) → σ₁ → ... → σ_n → 1 is a Hamiltonian path of the
inner tournament on {2,...,n+1}, which has tile structure identical to an
n-tournament with base path (n+1) → n → ... → 2.

## Notes for the formalizer

(none yet)
