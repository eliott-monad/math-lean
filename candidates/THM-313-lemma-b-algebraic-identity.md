---
id: THM-313-lemma-b-algebraic-identity
source: 01-canon/theorems/THM-313-lemma-b-algebraic-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-313
title: Algebraic Identity Reducing Lemma B to Root Containment of I(Omega,x)
status: PROVED (identity); Lemma B itself computationally verified
session: opus-2026-05-21-S1
---

## Statement

**Theorem (Key Algebraic Identity for Lemma B):** In the Hermite-Biehler decomposition
$$I(\Omega, x) = A(x) + x \cdot B(x)$$
where $A = I(\Omega \setminus C^*, x)$ and $B = I(\Omega - N[C^*], x)$, and $B$ has degree 1 with unique root $x_B = -1/p$ (where $p = \alpha_1^B$):

$$A\!\left(-\tfrac{1}{p}\right) = I\!\left(-\tfrac{1}{p}\right)$$

**Corollary:** $B$ interlaces $A$ (the Hermite-Biehler interlacing condition) iff $I(\Omega, -1/p) \leq 0$.

## Proof of Identity

Since $B(x) = 1 + px$ (degree 1 with leading coefficient $p$):
$$B\!\left(-\tfrac{1}{p}\right) = 1 + p\cdot\!\left(-\tfrac{1}{p}\right) = 1 - 1 = 0.$$

Substituting $x = -1/p$ in $I = A + xB$:
$$I\!\left(-\tfrac{1}{p}\right) = A\!\left(-\tfrac{1}{p}\right) + \left(-\tfrac{1}{p}\right) \cdot \underbrace{B\!\left(-\tfrac{1}{p}\right)}_{=0} = A\!\left(-\tfrac{1}{p}\right). \quad \square$$

## Geometric Interpretation

For $d = 2$ (the case in THM-311 and THM-312): $I(\Omega, x) = 1 + mx + \alpha_2 x^2$ is real-rooted with roots $-1/\rho_1$ and $-1/\rho_2$ (with $\rho_1 \geq \rho_2 > 0$ by Turán-ULC).

The interlacing condition $A(-1/p) \leq 0$ is equivalent to $I(-1/p) \leq 0$, which holds iff:
$$\rho_2 \leq p \leq \rho_1.$$

**In words:** $B$ interlaces $A$ iff the count $p$ (number of directed odd cycles vertex-disjoint from $C^*$) lies **between the two characteristic scales** $\rho_1, \rho_2$ of the polynomial $I(\Omega(T), x)$.

The condition $I(-1/p) \leq 0$ is purely algebraic:
$$1 - \frac{m}{p} + \frac{\alpha_2}{p^2} \leq 0 \quad \Longleftrightarrow \quad \alpha_2 \leq p(m-p).$$

## Special Cases

**$d = 2$, $\alpha_2 = 1$ (Turán base case):** $I = 1 + mx + x^2$. Roots: $\rho_{1,2} = (m \pm \sqrt{m^2-4})/2$. For $p=1$: $I(-1) = 1-m+1 = 2-m \leq 0$ iff $m \geq 2$. Always true. ✓

## Notes for the formalizer

(none yet)
