---
id: THM-049-m-swap-r-parity
source: 01-canon/theorems/THM-049-m-swap-r-parity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-049: Transfer Matrix r-Swap Identity

**Status:** PROVED
**Instance:** opus-2026-03-06-S11 (corrected proof)
**Dependencies:** Path reversal, B_v = (-1)^{|V|-1} E_v(-r)

## Statement

For the c-tournament transfer matrix M[a,b] defined by
$$M[a,b](r) = \sum_{S \subset U} (-1)^{|S|} E_a(S \cup \{a\}; r) \cdot B_b((U \setminus S) \cup \{b\}; r)$$
where $U = V \setminus \{a,b\}$, we have:

$$M[b,a](r) = M[a,b](-r)$$

## Proof

**Step 1: Path reversal identity.**
$B_v(V; r) = (-1)^{|V|-1} E_v(V; -r)$

A Hamiltonian path $v_1 \to \cdots \to v_k \to v$ ending at $v$ has weight
$\prod (r + s_{v_i, v_{i+1}})$. The reversed path $v \to v_k \to \cdots \to v_1$
has weight $\prod (r - s_{v_i, v_{i+1}}) = (-1)^k \prod (-r + s_{v_i, v_{i+1}})$
$= (-1)^{|V|-1} \cdot [\text{original weight at } r \to -r]$.

**Step 2: Rewrite M using path reversal.**
Since $|R \cup \{b\}| - 1 = |U| - |S|$:

$$M[a,b](r) = (-1)^{n-2} \sum_S E_a(S \cup \{a\}; r) \cdot E_b((U \setminus S) \cup \{b\}; -r)$$

(The $(-1)^{|S|}$ sign and $(-1)^{|U|-|S|}$ from B→E conversion combine to give $(-1)^{|U|} = (-1)^{n-2}$ with no $|S|$-dependence.)

**Step 3: Compute M[a,b](-r).**
$$M[a,b](-r) = (-1)^{n-2} \sum_S E_a(S \cup \{a\}; -r) \cdot E_b((U \setminus S) \cup \{b\}; r)$$

**Step 4: Compute M[b,a](r) and compare.**
$$M[b,a](r) = (-1)^{n-2} \sum_S E_b(S \cup \{b\}; r) \cdot E_a((U \setminus S) \cup \{a\}; -r)$$

Substituting $T = U \setminus S$:
$$= (-1)^{n-2} \sum_T E_b((U \setminus T) \cup \{b\}; r) \cdot E_a(T \cup \{a\}; -r)$$

## Notes for the formalizer

(none yet)
