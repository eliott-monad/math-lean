---
id: THM-224-golden-exceptional-points
source: 01-canon/theorems/THM-224-golden-exceptional-points.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-224
name: Golden Exceptional Points of the Tournament Transfer Matrix
status: PROVED
proved_by: kind-pasteur-2026-03-16-S115
verified_computationally: discriminant at 11 test points
---

# THM-224: Golden Exceptional Points

## Statement

The transfer matrix M(x) = [[1,2x,0],[0,0,1],[1,x,0]] with characteristic polynomial p(lambda) = lambda^3 - lambda^2 - x*lambda - x has discriminant

**Delta(x) = 4x(x^2 - 11x - 1).**

This vanishes at three exceptional points (EPs):

| EP | Coupling x | Double eigenvalue d | Third eigenvalue e |
|---|---|---|---|
| EP0 | 0 | 0 | 1 |
| EP1 | 8 - 5*phi | 1/phi = 0.6180... | 1 - 2/phi = -0.2360... |
| EP2 | 3 + 5*phi | -phi = -1.6180... | 1 + 2*phi = 4.2360... |

where phi = (1+sqrt(5))/2 is the golden ratio.

## Key Properties

- EP1 and EP2 are roots of x^2 - 11x - 1 = 0. Product = -1, sum = 11, difference = 5*sqrt(5).
- The double eigenvalue d satisfies d^2 + d - 1 = 0, the **golden ratio equation** (shifted form).
- At x = 1: the dominant eigenvalue is the **tribonacci constant** tau = 1.8393...
- At x = 0: the double zero splits as lambda_{2,3} ~ +/- i*sqrt(x) (square-root splitting).
- **Q(x_EP1) * Q(x_EP2) = -1** (the Cayley transforms at the two golden EPs multiply to -1).

## Proof

The discriminant of p(lambda) = lambda^3 + b*lambda^2 + c*lambda + d with b = -1, c = -x, d = -x:

Delta = 18bcd - 4b^3d + b^2c^2 - 4c^3 - 27d^2
      = 18(-1)(-x)(-x) - 4(-1)^3(-x) + (-1)^2(-x)^2 - 4(-x)^3 - 27(-x)^2

## Notes for the formalizer

(none yet)
