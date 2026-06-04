---
id: THM-218-delannoy-identity
source: 01-canon/theorems/THM-218-delannoy-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-218
name: Delannoy Identity for Tournament Fourier Energy
status: PROVED (computationally verified k,m=1..8; closed form proved algebraically)
proved_by: kind-pasteur-2026-03-15-S112
---

# THM-218: The Delannoy Identity

## Statement

The combinatorial Fourier weight g_k(m) satisfies:

**k · g_k(m) = Σ_{j=1}^{min(k,m)} j · C(k,j) · C(m,j) · 2^{j-1}**

Equivalently:

**g_k(m) = (1/k) Σ_{j=1}^{min(k,m)} j · C(k,j) · C(m,j) · 2^{j-1}**

where g_k(m) is the k-matching weight from THM-217.

## Significance

The quantity T(k,m) = k · g_k(m) counts the **total number of diagonal (1,1)-steps across all Delannoy paths from (0,0) to (k,m)**. A Delannoy path uses steps E=(1,0), N=(0,1), D=(1,1).

This connects the **Fourier analysis of tournament Hamiltonian path counts** to **Delannoy lattice path enumeration** — a completely unexpected bridge.

## Corollaries

### 1. Duality (IMMEDIATE)
k · g_k(m) = m · g_m(k) follows from the symmetry of j·C(k,j)·C(m,j) in k and m.

### 2. Parity (IMMEDIATE)
g_k(-m) = (-1)^k · g_k(m) follows from C(m,j) = (-1)^j · C(j-m-1,j) under m → -m.

### 3. Boundary values
- g_k(1) = C(k,1)·1·1/(k) = 1 for all k. ✓
- g_k(2) = (1/k)[1·k·2·1 + 2·C(k,2)·1·2]/k... = 2k via direct computation. ✓

### 4. Diagonal = OEIS A108666

## Notes for the formalizer

(none yet)
