---
id: THM-053-diagonal-signed-position
source: 01-canon/theorems/THM-053-diagonal-signed-position.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-053: Diagonal Signed Position Formula

**Type:** Theorem (PROVED)
**Certainty:** 5 -- PROVED with clean bijective argument
**Status:** PROVED
**Added by:** opus-2026-03-06-S11b (continued³)
**Tags:** #transfer-matrix #diagonal #position #bijection

---

## Statement

**Theorem.** For any tournament T on n vertices, the diagonal entries of the transfer matrix satisfy:

M[a,a] = sum_{P} (-1)^{pos(a,P)}

where the sum is over all Hamiltonian paths P of T, and pos(a,P) is the 0-indexed position of vertex a in path P.

Equivalently: M[a,a] = #(paths with a at even position) - #(paths with a at odd position).

---

## Proof

The IE formula gives:

M[a,a] = sum_{S subset U} (-1)^|S| * E_a(S+{a}) * B_a(R+{a})

where U = V\{a}, R = U\S, E_a(W) = #Ham paths in T[W] ending at a, B_a(W) = #Ham paths in T[W] starting at a.

**Claim:** The map from triples (S, pi_S, pi_R) to Hamiltonian paths P is a bijection, where:
- pi_S is a Hamiltonian path of T[S+{a}] ending at a
- pi_R is a Hamiltonian path of T[R+{a}] starting at a

**Bijection construction:** Given (S, pi_S, pi_R), define P = pi_S followed by pi_R (concatenation, identifying the shared endpoint a). This gives P = (first(pi_S), ..., a, ..., last(pi_R)), a Hamiltonian path of T visiting all n vertices exactly once.

**Well-defined:** P visits S ∪ {a} ∪ R = V, and S ∩ R = empty (since S, R partition U), so all vertices are distinct. The path is valid because pi_S is a valid path in T[S+{a}] and pi_R in T[R+{a}].

**Injective:** Different triples give different paths because P uniquely determines (S, pi_S, pi_R): S = {vertices before a in P}, pi_S = P restricted to positions 0,...,pos(a,P), pi_R = P restricted to positions pos(a,P),...,n-1.

## Notes for the formalizer

(none yet)
