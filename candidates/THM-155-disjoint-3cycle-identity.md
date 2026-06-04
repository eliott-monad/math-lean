---
id: THM-155-disjoint-3cycle-identity
source: 01-canon/theorems/THM-155-disjoint-3cycle-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-155: Disjoint 3-Cycle Identity for Regular Tournaments

**Status:** PROVED
**Proved by:** kind-pasteur-2026-03-12-S60
**Method:** Eigenvalue decomposition + trace identity

## Statement

For any regular tournament $T$ on $n = 2m+1$ vertices:

$$K(T) = c_5(T) - 2 \cdot \text{ov}_1(T) - 2 \cdot \text{ov}_2(T) = -\frac{3n(n^2-1)(n^2-9)}{320}$$

where:
- $c_5(T)$ = number of directed 5-cycles
- $\text{ov}_1(T)$ = number of pairs of 3-cycle vertex sets sharing exactly 1 vertex
- $\text{ov}_2(T)$ = number of pairs sharing exactly 2 vertices

**Equivalently:**

$$\text{disj}_3(T) + \frac{c_5(T)}{2} = \binom{c_3}{2} - \frac{3n(n^2-1)(n^2-9)}{640}$$

where $c_3 = n(n^2-1)/24$ is the number of 3-cycles (constant for regular tournaments) and $\text{disj}_3$ counts vertex-disjoint 3-cycle pairs.

## Proof Sketch

### Step 1: Trace Identity (Key Lemma)

For any regular tournament on $n = 2m+1$ vertices:

$$2\,\text{tr}(A^5) + 5\,\text{tr}(A^4) = 2m^5 + 5m^4 - m(5m+2)$$

**Proof:** Use eigenvalue decomposition. All non-trivial eigenvalues $z_k$ of a regular tournament have $\text{Re}(z_k) = -1/2$. Write $z_k = -1/2 + iy_k$.

The LHS equals $2m^5 + 5m^4 + \sum_k z_k^4(2z_k + 5)$.

Direct computation shows $\text{Re}(z^4(2z+5)) = 1/4 - 5y^2$.

Therefore $\sum_k \text{Re}(z_k^4(2z_k+5)) = (n-1)/4 - 5\sum y_k^2$.

Since $\sum |z_k|^2 = \text{tr}(A^T A) - m^2 = nm - m^2 = m(m+1)$ and $\sum y_k^2 = m(m+1) - (n-1)/4 = mn/2$, this sum equals $-m(5m+2)$.

## Notes for the formalizer

(none yet)
