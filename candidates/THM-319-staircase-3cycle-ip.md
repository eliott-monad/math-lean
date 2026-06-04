---
id: THM-319-staircase-3cycle-ip
source: 01-canon/theorems/THM-319-staircase-3cycle-ip.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-319
title: Independence Polynomial Coefficients for 3-Cycle Restriction of All-0 Staircase
status: PROVED (alpha_1--7); CONJECTURAL (alpha_8--9)
session: opus-2026-05-22-S4
---

## Statement

Let $I_3(T_k, x)$ denote the independence polynomial of $\Omega_3(T_k)$, the subgraph of the conflict graph $\Omega(T_k)$ induced on the 3-cycles. Then:
$$I_3(T_k, x) = \sum_{m=0}^{\lfloor 2k/3 \rfloor} \alpha_m x^m, \quad \alpha_m = \sum_{j=0}^{\lfloor m/2 \rfloor} c_{m,j} \binom{k}{2m-j},$$
with the following explicit coefficients:

| $m$ | $\alpha_m$ formula |
|---|---|
| 1 | $2\binom{k}{2}$ |
| 2 | $12\binom{k}{4} + \binom{k}{3}$ |
| 3 | $120\binom{k}{6} + 20\binom{k}{5}$ |
| 4 | $1680\binom{k}{8} + 420\binom{k}{7} + 10\binom{k}{6}$ |
| 5 | $30240\binom{k}{10} + 10080\binom{k}{9} + 560\binom{k}{8}$ |
| 6 | $665280\binom{k}{12} + 277200\binom{k}{11} + 25200\binom{k}{10} + 280\binom{k}{9}$ |
| 7 | $17297280\binom{k}{14} + 8648640\binom{k}{13} + 1108800\binom{k}{12} + 30800\binom{k}{11}$ |
| 8 | $518918400\binom{k}{16} + 302702400\binom{k}{15} + 50450400\binom{k}{14} + 2402400\binom{k}{13} + 15400\binom{k}{12}$ (conjectural) |

## Patterns in Coefficients

**Leading coefficients:** $c_{m,0} = A_m := \frac{(2m)!}{m!}$.

Proof: The leading term counts $m$-tuples of mutually vertex-disjoint 3-cycles from fully disjoint pairs. A matching of size $m$ in $K_k$ corresponds to $m$ disjoint pair-of-pairs; for each such matching, all $2^m$ choices of A- or B-type cycle are valid, giving $2^m \cdot \binom{k}{2m}(2m-1)!! = A_m \binom{k}{2m}$ configurations.

**Sub-leading coefficients:** $c_{m,1} = \frac{m-1}{12} A_m$.

| $m$ | $c_{m,1}/A_m$ |
|---|---|
| 2 | $1/12$ |
| 3 | $2/12 = 1/6$ |
| 4 | $3/12 = 1/4$ |
| 5 | $4/12 = 1/3$ |
| 6 | $5/12$ |
| 7 | $6/12 = 1/2$ |

## Notes for the formalizer

(none yet)
