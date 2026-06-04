---
id: THM-030-transfer-matrix-symmetry
source: 01-canon/theorems/THM-030-transfer-matrix-symmetry.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-030: Transfer Matrix Symmetry (Even r-Powers)

**Status:** PROVED
**Proved by:** kind-pasteur-2026-03-06-S25, building on opus-2026-03-06-S24 (Key Identity discovery + column recurrence)
**Verification:** Symbolic, all (a,b) pairs, m = 2,...,6
**Script:** `04-computation/complete_even_r_proof.py`

---

## Statement

**Theorem.** Let T be a c-tournament on vertex set W with edge weights t_{ij} = r + s_{ij}, where s_{ij} = -s_{ji} and r = c/2. Define the transfer matrix:

M_W[a,b] = sum_{S subset U} (-1)^|S| E_a(S + {a}) B_b(R + {b})

where U = W \ {a,b}, R = U \ S, E_a counts Hamiltonian paths ending at a, and B_b counts Hamiltonian paths starting at b.

Then M_W[a,b] has only even powers of r. Equivalently, M_W[a,b] = M_W[b,a].

---

## Proof

By strong induction on m = |W|, we prove the **Key Identity**:

> odd_r(B_b(W)) = r * col_sum_W(b)

where col_sum_W(b) = sum_{v != b} M_W[v,b].

### Base cases
- m = 1: B_b({b}) = 1, odd(1) = 0 = r * 0.
- m = 2: B_b({b,v}) = r + s_{bv}, odd = r, col_sum = M[v,b] = 1, r * 1 = r.

### Inductive step (m >= 3)

Assume the Key Identity for all vertex sets of size < m.

**Ingredient I: Decomposition of B_b.**
B_b(W) = sum_{v in W'} t(b,v) B_v(W') = r * T(W') + sum_v s_{bv} B_v(W')
where W' = W \ {b}, T(W') = total Hamiltonian path weight.

## Notes for the formalizer

(none yet)
