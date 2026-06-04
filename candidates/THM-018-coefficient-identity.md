---
id: THM-018-coefficient-identity
source: 01-canon/theorems/THM-018-coefficient-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-018: Coefficient Identity alpha_w^H = alpha_w^I

**Type:** Theorem (proved symbolically at n<=8; numerical at n<=9)
**Certainty:** 5 -- PROVED at n=4,...,8 (symbolic); OPEN for general n
**Status:** PROVED at n<=8; OPEN for general n
**Added by:** opus-2026-03-05-S5/S5b
**Tags:** #ocf #arc-reversal #coefficient-matching #open-q-009 #claim-a

---

## Statement

For n = 4, 5, 6, 7, 8 and any tournament T on n vertices with s_w = 0 for all w in W = V\{i,j}:

**alpha_w^H = alpha_w^I**

as a polynomial identity in the arc variables, where:

- alpha_w^H = d(delta_H)/d(s_w)|_{s=0} is the coefficient of s_w in the Hamiltonian path difference delta_H
- alpha_w^I = d(delta_I)/d(s_w)|_{s=0} is the coefficient of s_w in the OCF expression delta_I (using the FULL inductive formula)

Since delta_H and delta_I are both linear in the s-variables (no cross terms s_a*s_b), and the coefficients match for each w, this proves **delta_H = delta_I** and hence **OCF** at each verified n.

**CRITICAL DISCOVERY (S5b):** The full inductive formula for alpha_w^I, which uses
H(comp) factors from inductive OCF, produces the EXACT same polynomial as alpha_w^H.
This means the OCF proof reduces to proving a single polynomial identity that holds
at every n checked (4,...,8 symbolic, 4,...,9 numerical).

---

## Key Formulas

### alpha_w^H (Insertion Decomposition)

For each permutation pi = (u_1, ..., u_{m-1}) of B_w = W\{w}, define:

**S(pi) = [T(w,u_1) + q_{u_1}] + sum_{k=1}^{m-2} [T(u_k,w)*q_{u_{k+1}} + p_{u_k}*T(w,u_{k+1})]/T(u_k,u_{k+1}) + [T(u_{m-1},w) + p_{u_{m-1}}]**

where p_v = T(v,I), q_v = T(J,v), with p_v + q_v = 1 at s=0.

## Notes for the formalizer

(none yet)
