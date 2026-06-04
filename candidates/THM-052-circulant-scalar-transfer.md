---
id: THM-052-circulant-scalar-transfer
source: 01-canon/theorems/THM-052-circulant-scalar-transfer.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-052: Vertex-Transitive Tournaments Have Scalar Transfer Matrix

**Status:** FALSE for general VT tournaments (MISTAKE-013/014: Frobenius F_21 counterexample at n=21). Valid only for self-converse VT tournaments. See THM-113-circulant-scalar-M.md for the correct scope.
**Added:** opus-2026-03-06-S26
**Strengthened:** opus-2026-03-06-S26 (extended from circulant to vertex-transitive — LATER DISPROVED for non-SC VT)

## Statement

**Theorem.** For any vertex-transitive tournament T on n vertices (odd n), the transfer matrix is scalar:

    M = (H/n) * I

where H = H(T) is the Hamiltonian path count.

This includes all circulant tournaments, Paley tournaments, doubly regular tournaments, and Cayley tournaments on any group.

## Proof

### Step 1: Circulant + Symmetric => Circulant Symmetric Matrix

The rotation σ: i ↦ i+1 (mod n) is an automorphism of any circulant tournament. By the IE definition, M[σ(a), σ(b)] = M[a,b], so M is a circulant matrix: M[a,b] = m_{(b-a) mod n}. Combined with THM-030 (M symmetric), we get m_d = m_{n-d}.

### Step 2: N(d,j) is Palindromic via Reflection-Reversal Bijection

Define the map φ on Hamiltonian paths: φ(P) = r(P^rev), where:
- P^rev = path reversal: (p_{n-1}, ..., p_0)
- r: i ↦ -i (mod n) is the reflection

**Claim:** φ is a well-defined involution on Ham(T).

*Proof:* The reflection r is an isomorphism from T to T^op (it maps edge distance d to n-d, converting gen set S to its complement). So P^rev (a Ham path of T^op) maps under r to a Ham path of T. And φ² = id since both r and reversal are involutions.

**Key property:** If P has "distance" d = (p_{j+1} - p_j) mod n at position j, then φ(P) has distance d at position (n-2-j).

*Proof:* In φ(P) = (-p_{n-1}, ..., -p_0), the distance at position k is:
(-p_{n-2-k}) - (-p_{n-1-k}) = p_{n-1-k} - p_{n-2-k}, which is the distance of P at position (n-2-k).

Therefore N(d, j) = N(d, n-2-j) for all d and j.

### Step 3: Palindromic + Even Length => Zero Alternating Sum

## Notes for the formalizer

(none yet)
