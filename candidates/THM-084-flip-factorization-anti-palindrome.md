---
id: THM-084-flip-factorization-anti-palindrome
source: 01-canon/theorems/THM-084-flip-factorization-anti-palindrome.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-084: Arc-Flip Factorization and Anti-Palindromicity of D(x)
# (Renumbered from THM-082 by kind-pasteur-S36 — THM-082 is deletion-contraction for Ham paths)

**Type:** Theorem (proved algebraically)
**Certainty:** 5 -- PROVED
**Status:** PROVED (algebraic proof from definitions; verified exhaustively at n=4,5)
**Added by:** opus-2026-03-07
**Tags:** #f-polynomial #arc-flip #palindrome #reversal-involution

---

## Setup

Let T be a tournament on n vertices with arc u->v. Let T' be the tournament
obtained by flipping this arc (replacing u->v with v->u). Define:

- **F(T, x)** = sum over Hamiltonian paths P of x^{fwd(P)}, where fwd(P) counts
  forward edges along P.

Partition Hamiltonian paths into three types:

- **Type (a):** P contains ...u,v... consecutively. Since u->v is an arc of T,
  this contributes one forward step. Let fwd(P) denote the total forward count in T.

- **Type (b):** P contains ...v,u... consecutively. Since v->u is NOT an arc of T
  (u->v is), this step is backward. Let fwd(P) denote the total forward count in T.

- **Type (c):** P does not contain u,v in either order consecutively. The flip
  does not change the forward count of P.

Define the generating functions (polynomials in x):

- **G_uv(x) = sum_{P of type (a)} x^{fwd(P)-1}** (shifted down by 1, removing the
  u->v forward step)

- **G_vu(x) = sum_{P of type (b)} x^{fwd(P)}**

- **D(x) = G_uv(x) - G_vu(x)**

Both G_uv and G_vu have degree at most n-2.

## Notes for the formalizer

(none yet)
