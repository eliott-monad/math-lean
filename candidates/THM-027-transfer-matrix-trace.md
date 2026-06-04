---
id: THM-027-transfer-matrix-trace
source: 01-canon/theorems/THM-027-transfer-matrix-trace.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-027: Transfer Matrix Trace Formula

**Status:** PROVED
**Source:** opus-2026-03-06-S6

## Statement

For a tournament T on n vertices, define the n x n transfer matrix:

M[a,b] = sum_{S ⊆ V\{a,b}} (-1)^|S| E_a(S) * B_b(V\{a,b}\S)

where E_a(S) = # Hamiltonian paths in T[S ∪ {a}] ending at a, and B_b(R) = # Hamiltonian paths in T[{b} ∪ R] starting from b.

Then:

(i) **Diagonal formula:** M[a,a] = sum_{P: Ham path of T} (-1)^{pos(a,P)}

where pos(a,P) is the 0-indexed position of vertex a in path P.

(ii) **Trace formula:** tr(M) = sum_a M[a,a] = H(T) if n is odd, 0 if n is even.

More precisely: tr(M) = H(T) * (1 - (-1)^n) / 2.

(iii) **Off-diagonal sum:** sum_{a != b} M[a,b] = 0 if n is odd, 2*H(T) if n is even.

## Proof of (i)

For vertex a and subset S ⊆ V\{a}, let R = V\{a}\S. The product E_a(S) * B_a(R) counts pairs (sigma, tau) where sigma is a Hamiltonian path through S ending at a, and tau is a Hamiltonian path through R starting from a.

**Key bijection:** Each such pair determines a unique Hamiltonian path of T:

P = (sigma_1, ..., sigma_{|S|}, a, tau_1, ..., tau_{|R|})

This is valid because:
- sigma visits all of S and ends at a (arcs within S ∪ {a} are valid)
- tau visits all of R and starts from a (arcs within {a} ∪ R are valid)
- S, {a}, R partition V, so all vertices are visited exactly once

Conversely, each Hamiltonian path P with a at position k (0-indexed) determines a unique pair (sigma = left part, tau = right part) with S = {vertices at positions 0,...,k-1} and R = {vertices at positions k+1,...,n-1}.

## Notes for the formalizer

(none yet)
