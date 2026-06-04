---
id: THM-127-dihedral-antiautomorphism
source: 01-canon/theorems/THM-127-dihedral-antiautomorphism.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-127
title: Dihedral anti-automorphism of Paley tournaments (p≡3 mod 4)
status: PROVED
proved_by: opus-2026-03-12
date: 2026-03-12
related_theorems: [THM-126]
tags: [paley, dihedral, automorphism, group-theory, symmetry]
---

## Statement

Let p ≡ 3 (mod 4) be prime and T_p the Paley tournament on Z_p (vertex i→j iff j−i is a
quadratic residue mod p).

The full symmetry group of T_p is the dihedral group D_{2p} = ⟨r, s | r^p=s²=1, srs=r^{-1}⟩
acting as:

- **Rotation r**: vertex v ↦ v+1 (mod p) — an automorphism T_p → T_p (preserves orientation)
- **Reflection s**: vertex v ↦ −v (mod p) — an ANTI-automorphism T_p → T_p^{op} (reverses all arcs)

D_{2p} acts faithfully on Z_p by these maps.

## Proof

**r is an automorphism:** i→j iff j−i ∈ QR_p, and (j+1)−(i+1) = j−i, so the shift by 1
preserves the tournament. This generates the cyclic automorphism group Z_p ≤ Aut(T_p).

**s is an anti-automorphism:** Under v↦−v: i→j becomes −i→−j, i.e., −j→−i in the
original labeling. Equivalently, arc (i,j) maps to arc (−j,−i), which is the same as (−j→−i)
iff −i−(−j) = j−i ∈ QR_p. But this gives the arc −j→−i, which means s maps each arc of T_p
to the REVERSE arc of T_p — hence s: T_p → T_p^{op}.

**Why p≡3 mod 4 is essential:** The map v↦−v = v+p is an anti-automorphism iff −1 is NOT
a quadratic residue. By Euler's criterion: (−1)^{(p-1)/2} ≡ −1 (mod p) iff p≡3 (mod 4).
So −1 ∉ QR_p precisely when p≡3 (mod 4).

**Why p≡1 mod 4 fails:** For p≡1 mod 4, −1 ∈ QR_p, so QR_p = −QR_p, and v↦−v is an
ordinary automorphism (not anti-automorphism). Paley tournaments at p≡1 mod 4 are self-complementary
but the dihedral action degenerates — the reflection fixes the tournament rather than flipping it.

## Notes for the formalizer

(none yet)
