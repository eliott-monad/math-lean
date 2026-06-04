---
id: THM-321-staircase-coefficient-formula
source: 01-canon/theorems/THM-321-staircase-coefficient-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-321
title: Complete Closed-Form Formula for 3-Cycle IP Coefficients of All-0 Staircase
status: PROVED
session: opus-2026-05-22-S4
---

## Statement

**Theorem:** The coefficient $c_{m,j}$ in $\alpha_m = \sum_{j=0}^{\lfloor m/2\rfloor} c_{m,j}\binom{k}{2m-j}$ satisfies:
$$c_{m,j} = \frac{A_{m-2j}}{j!}\prod_{i=0}^{j-1}\binom{2m-j-3i}{3},$$
where $A_n = (2n)!/n!$ and empty products equal 1.

In particular:
$$c_{m,0} = A_m = \frac{(2m)!}{m!}, \qquad \frac{c_{m,1}}{A_m} = \frac{m-1}{12}, \qquad \frac{c_{m,2}}{A_m} = \frac{(m-1)(m-2)(m-3)}{144(2m-1)}.$$

## Proof

**Combinatorial interpretation:** $c_{m,j}\binom{k}{2m-j}$ counts collections of $m$ vertex-disjoint 3-cycles in $T_k$ that together use exactly $2m-j$ distinct pair indices.

**Cycle structure** (proved in THM-318): Every 3-cycle of $T_k$ involves exactly 2 pairs. For $a<b$:
- $A(a,b)$: vertices $\{2a, 2a+1, 2b\}$
- $B(a,b)$: vertices $\{2a+1, 2b, 2b+1\}$

**Conflict rules** (vertex-sharing analysis):
- $A(a,b)$ and $A(c,d)$ conflict $\iff \{a,b\}\cap\{c,d\}\neq\emptyset$.
- $B(a,b)$ and $B(c,d)$ conflict $\iff \{a,b\}\cap\{c,d\}\neq\emptyset$.
- $A(a,b)$ and $B(c,d)$ conflict $\iff a=c$ or $a=d$ or $b=d$. (Notably: $b=c$ does NOT cause conflict.)
- $A(a,b)$ and $B(a,b)$ always conflict (same pair).

**Key observation — Bridge:** For $a < p < b$, cycles $A(a,p)$ and $B(p,b)$ are vertex-disjoint. They share pair index $p$ (as second pair of $A$, first pair of $B$) but use distinct vertices: $A(a,p) = \{2a, 2a+1, 2p\}$, $B(p,b) = \{2p+1, 2b, 2b+1\}$.

This is the ONLY way two cycles can share a pair index without conflicting. No other A-B or same-type sharing is vertex-disjoint.

**Counting configurations using exactly $2m-j$ pairs:**

For each $j$: the $j$ "savings" (pairs used twice) come from exactly $j$ independent bridges. Each bridge is an $\{A(a_i, p_i), B(p_i, b_i)\}$ pair sharing one pair index $p_i$.

For a fixed set $S$ of $2m-j$ pair indices:
1. Choose $j$ disjoint bridge triples $(a_1,p_1,b_1),\ldots,(a_j,p_j,b_j)$ from $S$ (no shared pair among the $j$ triples). Number of ways (unordered) = $\frac{1}{j!}\prod_{i=0}^{j-1}\binom{|S|-3i}{3}$.

## Notes for the formalizer

(none yet)
