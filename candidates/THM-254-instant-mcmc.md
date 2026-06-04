---
id: THM-254-instant-mcmc
source: 01-canon/theorems/THM-254-instant-mcmc.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-254: The Instant MCMC Theorem (Polynomial Mixing)

**Status:** PROVED
**Session:** kind-pasteur-2026-03-17-S116n33

## Statement

For the random flip Markov chain on the m-dimensional hypercube {0,1}^m, and any observable f: {0,1}^m → R with max Walsh degree D:

**E[f(X_t) | X_0 = x] is a polynomial of degree D in z = exp(-2t/m)**

with rational coefficients depending on x.

Specifically:

**E[f(X_t) | X_0 = x] = Σ_{k=0}^{D} B_k(x) · z^k**

where B_k(x) = Σ_{|S|=k} ĥ_f(S) · χ_S(x) and ĥ_f(S) = (1/2^m) Σ_y f(y) · χ_S(y) are the Walsh-Fourier coefficients of f.

## Consequences

1. **At log-rational times** t = (m/2)·ln(q) for rational q: z = 1/q is rational, and E[f] is an **exact rational number**. No floating-point approximation needed.

2. **The polynomial has only D+1 coefficients**, regardless of the size 2^m of the state space. For tournament H at n=6: D=4, so 5 coefficients encode the ENTIRE mixing dynamics.

3. **After O(2^m) preprocessing** (computing the Walsh transform), any query E[f(X_t) | X_0 = x] at any time t is answered in **O(D) = O(1) time**.

4. **P(0) = B_0 = mean(f)** always. P(1) = f(x) always. P(z) interpolates between the starting value and the equilibrium mean.

## Proof

The heat kernel of the hypercube flip chain is:

K_t(x,y) = (1/2^m) Σ_S exp(-μ_S · t) · χ_S(x) · χ_S(y)

where μ_S = 2|S|/m. Therefore:

E[f(X_t) | X_0 = x] = Σ_y K_t(x,y) · f(y)
= Σ_S ĥ_f(S) · exp(-2|S|t/m) · χ_S(x)
= Σ_S ĥ_f(S) · z^{|S|} · χ_S(x)

## Notes for the formalizer

(none yet)
