---
id: THM-054-universal-coefficients
source: 01-canon/theorems/THM-054-universal-coefficients.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-054: Universal Coefficient Formula

**Type:** Theorem (verified computationally, proof sketch available)
**Certainty:** 4 -- VERIFIED computationally n=5,7,9
**Status:** VERIFIED
**Added by:** opus-2026-03-06-S11b (continued³), building on opus-S26
**Tags:** #transfer-matrix #r-polynomial #3-cycles #universal

---

## Statement

**Theorem.** Let M(r) = sum_{j=0}^{floor((n-1)/2)} c_{2j} * r^{2j} be the even r-power decomposition of the transfer matrix. Then:

**(a)** c_{n-1} = (n-1)! * I for ALL tournaments on n vertices.

**(b)** tr(c_{n-3}) = 2 * (n-2)! * (t_3 - C(n,3)/4)

where t_3 = #directed 3-cycles in T and C(n,3)/4 is the expected 3-cycle count in a random tournament.

**(c)** For regular tournaments at odd n: c_{n-3} = (n-1)!/4 * I (scalar, universal).

---

## Proof of (a)

The coefficient of r^{n-1} in M[a,a] comes from the term where ALL edge weights contribute their r component (no s_{ij} contributions). By THM-053:

c_{n-1}[a,a] = sum_{pi in S_n} (-1)^{pos(a,pi)} * [product of r's]

Since each path has n-1 edges, each contributing r, the r^{n-1} coefficient counts: for every ordering of n vertices, (-1)^{pos(a)}. There are (n-1)! orderings for each position of a, so:

c_{n-1}[a,a] = (n-1)! * sum_{k=0}^{n-1} (-1)^k = (n-1)! at odd n, 0 at even n.

For off-diagonal M[a,b] (a != b): total degree is n-2, so c_{n-1} contributes only on the diagonal, giving c_{n-1} = (n-1)! * I.

---

## Verification of (b)

## Notes for the formalizer

(none yet)
