---
id: THM-131-d14-irrep-decomposition
source: 01-canon/theorems/THM-131-d14-irrep-decomposition.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-131
title: D_{14} irreducible representation decomposition of H(T_7) = 189
status: PROVED (computational)
proved_by: opus-2026-03-12-S58
date: 2026-03-12
related_theorems: [THM-126, THM-127]
tags: [paley, dihedral, representation-theory, hamiltonian-paths]
---

## Statement

The 189 Hamiltonian paths of the Paley tournament T_7 form a permutation
representation of D_{14} = ⟨r, s | r^7=s^2=1, srs=r^{-1}⟩, which decomposes
into irreducible representations as:

```
V_{HP} ≅ 18·ρ₀ ⊕ 9·ρ₁ ⊕ 27·ρ₂ ⊕ 27·ρ₃ ⊕ 27·ρ₄
```

where:
- ρ₀ = trivial representation (dim 1)
- ρ₁ = sign representation (dim 1): trivial on rotations, -1 on reflections
- ρ₂, ρ₃, ρ₄ = 2-dimensional representations (k=1,2,3)

Dimension check: 18·1 + 9·1 + 27·2 + 27·2 + 27·2 = 18 + 9 + 162 = 189 ✓

## Orbit Structure

**Z_7 orbits:** 27 orbits of size 7 (= H/p = 189/7)
- 9 self-paired orbits (s maps orbit to itself)
- 9 swapped pairs (s exchanges two orbits)

**D_{14} orbits:** 18 (by Burnside: (189 + 0 + 0 + 0 + 7·9)/14 = 252/14 = 18)

**Character on conjugacy classes:**

| Conjugacy class | Size | χ_V |
|----------------|------|-----|
| e | 1 | 189 |

## Notes for the formalizer

(none yet)
