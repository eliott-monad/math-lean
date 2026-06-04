---
id: THM-093-kappa4-formula
source: 01-canon/theorems/THM-093-kappa4-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-093: Fourth Cumulant Formula for Forward-Edge Distribution

**Status:** PROVED for constant and t₃² terms (algebraic); VERIFIED for t₅ and α₂ coefficients at n=5,6,7
**Proved by:** opus-2026-03-07-S46d
**Scope:** All tournaments on n ≥ 5 vertices

---

## Statement

For a tournament T on n vertices, the fourth cumulant of the forward-edge count is:

$$\kappa_4(T) = -\frac{n+1}{120} + \frac{2}{\binom{n}{4}}(t_5 + 2\alpha_2) - \frac{48}{n^2(n-1)^2} \cdot t_3^2$$

where:
- t₃ = number of directed 3-cycles in T
- t₅ = number of directed 5-cycles (counted per direction)
- α₂ = number of unordered pairs of vertex-disjoint 3-cycles
- κ₄ = μ₄ - 3σ⁴ is the excess kurtosis times σ⁴

Equivalently:

$$\kappa_4(T) = -\frac{n+1}{120} + \frac{2}{\binom{n}{4}} \cdot t_5 + \frac{4}{\binom{n}{4}} \cdot \alpha_2 - \frac{48}{n^2(n-1)^2} \cdot t_3^2$$

---

## Proof Structure

### Part 1: Constant term (PROVED algebraically)

For the transitive tournament (t₃ = t₅ = α₂ = 0), the forward-edge distribution equals the Eulerian distribution (descent count of permutations). The cumulants of the Eulerian distribution are:

κ₂ = (n+1)/12,  κ₄ = -(n+1)/120

These follow from the classical formula κ₂ₖ = (-1)^{k+1}(n+1)B₂ₖ/(2k) where B₂ₖ are Bernoulli numbers (B₂ = 1/6, B₄ = -1/30).

Note the universal ratio κ₄/κ₂ = -1/10 for transitive tournaments, independent of n.

### Part 2: Zero linear t₃ coefficient (PROVED algebraically)

## Notes for the formalizer

(none yet)
