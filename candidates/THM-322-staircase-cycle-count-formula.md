---
id: THM-322-staircase-cycle-count-formula
source: 01-canon/theorems/THM-322-staircase-cycle-count-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-322
title: Odd-Cycle Count Formulas for All-0 Staircase T_k
status: CONJECTURE (verified k=2..8)
session: opus-2026-05-23-S5
tags: [staircase, cycle-counts, combinatorics, formula]
related: [THM-318, THM-319, THM-321]
---

## Statement

In the all-0 staircase tournament T_k (n=2k vertices), the number of odd directed cycles of length 2j+1 is:

$$\#_{2j+1}(T_k) = \sum_{i=0}^{j-1} c_{j,i} \cdot \binom{k}{2j-i}$$

with the following properties and explicit formulas for j=1..4:

### j=1: Triangle (#3)
$$\#_3(T_k) = 2\binom{k}{2}$$

### j=2: Pentagon (#5)
$$\#_5(T_k) = 4\binom{k}{4} + 6\binom{k}{3} = \binom{k}{3}(k+3)$$

### j=3: Heptagon (#7)
$$\#_7(T_k) = 6\binom{k}{6} + 80\binom{k}{5} + 28\binom{k}{4}$$

### j=4: Nonagon (#9)
$$\#_9(T_k) = 8\binom{k}{8} + 672\binom{k}{7} + 1220\binom{k}{6} + 210\binom{k}{5}$$

## Coefficient Patterns

**Leading coefficient:** $c_{j,0} = 2j$ (coefficient of $\binom{k}{2j}$)

**Number of terms:** j terms for the (2j+1)-cycle formula

**Diagonal (last) coefficient:** $c_{j,j-1} = d_j$ where $d_j = \#_{2j+1}(T_{j+1})$, the number of (2j+1)-cycles in the minimum-k staircase:

| j | d_j | T_{j+1} |
|---|-----|---------|
| 1 | 2   | T_2 (4 vertices) |

## Notes for the formalizer

(none yet)
