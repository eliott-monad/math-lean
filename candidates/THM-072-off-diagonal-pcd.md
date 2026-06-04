---
id: THM-072-off-diagonal-pcd
source: 01-canon/theorems/THM-072-off-diagonal-pcd.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-072: Off-Diagonal Position Character Decomposition

**Type:** Theorem
**Certainty:** 5 -- PROVED (degree 2: algebraic all odd n; degree 4: verified n=5,7)
**Status:** PROVED at degree 2 (all odd n); VERIFIED at degree 4 (n=5,7); CONJECTURED general
**Added by:** opus-2026-03-07-S35
**Tags:** #Walsh-Hadamard #transfer-matrix #off-diagonal #symmetry

---

## Statement

### (i) Interior zero lemma (PROVED, all degrees, all n)

For any Walsh monomial S of degree 2k, and any vertex v that is interior to a
path component of S (i.e., deg_S(v) >= 2):

**Mc_hat[v, b, S] = 0** and **Mc_hat[a, v, S] = 0** for all a, b.

where Mc[a,b](T) = #{directed Hamiltonian paths from a to b in T}.

**Proof:** For the Walsh coefficient to be nonzero, valid permutations must
contain all edges of S. Starting at v requires only 1 incident edge, but
deg_S(v) >= 2 edges of S are incident to v. So no valid HP starts at v. QED.

### (ii) Off-diagonal formula at even Walsh degrees

For degree 2k monomial S with r path components of lengths 2a_1,...,2a_r:

Let epsilon = (-1)^{desc(S)} (constant across valid perms, from PCD proof).
Let H_raw = epsilon * 2^r * (n-2k)!.

**Mc_hat[a,b,S] / H_hat[S] equals:**

| Start (a) | End (b) | Condition | Value |
|-----------|---------|-----------|-------|
| Interior | Any | deg_S(a) >= 2 | 0 |
| Any | Interior | deg_S(b) >= 2 | 0 |
| Endpoint B_i | Endpoint B_j | i != j (different blocks) | 1/(4*(n-2k)*(n-2k-1)) |
| Endpoint B_i | Endpoint B_i | Same block, n-2k > 1 | 0 |

## Notes for the formalizer

(none yet)
