---
id: THM-089-fwd-variance-t3
source: 01-canon/theorems/THM-089-fwd-variance-t3.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-089: Forward-Edge Variance Formula

**Status:** PROVED
**Proved by:** opus-2026-03-07-S46
**Scope:** All tournaments

---

## Statement

Let T be a tournament on n vertices with t3 directed 3-cycles. For a uniformly random permutation P of V(T), let fwd(P) = #{i : P[i] -> P[i+1] in T}. Then:

$$\text{Var}[\text{fwd}(P)] = \frac{n+1}{12} + \frac{4\,t_3}{n(n-1)}$$

Equivalently: E[fwd^2] = (n-1)(3n+2)/12 + 4t3/(n(n-1)).

---

## Proof

Write fwd(P) = sum_{i=0}^{n-2} X_i where X_i = 1 if P[i] -> P[i+1] in T.

**Step 1: Marginals.**
For any i, Pr(P[i]->P[i+1]) = 1/2 (by symmetry: any ordered pair of vertices is equally likely to be forward or backward). So E[X_i] = 1/2, Var(X_i) = 1/4.

**Step 2: Non-adjacent covariance vanishes.**
For |i-j| >= 2, the four vertices P[i], P[i+1], P[j], P[j+1] are distinct. We show:

E[X_i X_j] = #{(a,b,c,d) distinct : a->b, c->d} / n(n-1)(n-2)(n-3)

For each directed edge a->b (there are C(n,2) such), the edges among the remaining n-2 vertices form a tournament on n-2 vertices, which ALWAYS has exactly C(n-2,2) directed edges, regardless of T.

Therefore: #{(a,b,c,d) distinct : a->b, c->d} = C(n,2) * C(n-2,2).

E[X_i X_j] = C(n,2)*C(n-2,2) / [n(n-1)(n-2)(n-3)] = 1/4.

Cov(X_i, X_j) = 1/4 - 1/4 = 0. Done.

**Step 3: Adjacent covariance.**
For j = i+1: E[X_i X_{i+1}] = #{(a,b,c) distinct : a->b->c} / [n(n-1)(n-2)].

## Notes for the formalizer

(none yet)
