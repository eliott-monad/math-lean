# Formal-group n-fold sum: diagonalization, product form, and the interior-pole trap

Source: informal commit `5f33de8e` "verify formal group n-fold sums";
`04-computation/formal_group_s90as.py`; LEM-004(d).
Lean: `Math/FormalGroup/NFoldSum.lean` (extends `Math/FormalGroup/Basic.lean`,
see also `exploration/2026-06-12-formal-group-oddness.md`).

## What was formalized

The n-fold formal sum of the tournament formal group `F(x,y)=(x+y)/(1+xy)`:

```text
Fsum []      = 0
Fsum (a::l)  = F a (Fsum l)          -- i.e. F a1 (F a2 (... (F an 0)))
```

with even/odd elementary-symmetric parts `E l = Σ_{|S| even} ∏S`, `O l = Σ_{|S| odd} ∏S`
(recursion `E(a::l)=E l + a·O l`, `O(a::l)=O l + a·E l`). Lean results:

- `Fsum_eq_div`  : `Fsum l = O l / E l` away from poles.
- `Fsum_eq_prod` : `Fsum l = (∏(1+aᵢ) − ∏(1−aᵢ)) / (∏(1+aᵢ) + ∏(1−aᵢ))`.
- `F_left3/F_right3/F_assoc`, `F_addr` (Cayley address = multiplication).

## The hidden structure the Lean proof revealed (genuinely worth keeping)

**1. The recursion is a 2×2 matrix product, and it diagonalizes.**
`[E(a::l); O(a::l)] = M(a) · [E l; O l]` with `M(a) = [[1,a],[a,1]] = I + a·X`,
`X = [[0,1],[1,0]]` the swap. `X` has eigenvectors `(1,±1)` with eigenvalues `±1`, so the
*linear combinations* `E ± O` decouple completely:

```text
E(l) + O(l) = ∏ (1 + aᵢ)          (1,1)-eigencomponent
E(l) − O(l) = ∏ (1 − aᵢ)          (1,-1)-eigencomponent
```

These two are **unconditional polynomial identities** — no division, no domain hypotheses
(`Epart_add_Opart`, `Epart_sub_Opart`). They are the cleanest possible description of the
elementary-symmetric numerator/denominator and immediately give the product closed form.

**2. The product form IS the Cayley transform of a product.** With `Q(x)=(1+x)/(1−x)`,
`P := ∏(1+aᵢ)`, `N := ∏(1−aᵢ)`, we have `Fsum = (P−N)/(P+N)` and therefore

```text
Q(Fsum l) = P/N = ∏ Q(aᵢ).
```

This is the n-fold version of the known homomorphism `Q(F(x,y)) = Q(x)·Q(y)`
(formal_group_s90as.py Part 3): **the n-fold formal sum is multiplication conjugated by Q.**
On Cayley addresses `aᵢ = (nᵢ−1)/(nᵢ+1)` (where `Q(aᵢ)=nᵢ`) this says
`Q(Fsum) = ∏ nᵢ`, i.e. the n-fold sum of addresses is the address of the product — the
generalization of `F_addr`. The m-fold sum of a single address `x_n` is then `x_{n^m}`
(exponentiation), matching formal_group_s90as.py Part 2.

## The interior-pole trap (a correctness subtlety, NOT a contradiction)

`Fsum` is a **left fold**, so it can hit a pole at an *interior* suffix even when the
*global* denominator is fine. The closed form needs `E(s) ≠ 0` for **every suffix** `s`,
not just `E(l) ≠ 0`. Concretely (note `P+N = 2·E(l)`, so "global denominator nonzero"
= `E(l)≠0`):

```text
l = [2, 2, -1/2]:
  E(l) = 1 + (4 − 1 − 1) = 3 ≠ 0   ⇒ P + N = 6 ≠ 0   (global denominator fine)
  but suffix [2, -1/2] has E = 1 + 2·(−1/2) = 0   (interior pole)
  Fsum l = F 2 (F 2 (-1/2)) = F 2 ((3/2)/0) = F 2 0 = 2     (actual left-fold value)
  (P−N)/(P+N) = 3/6 = 1/2                                    (product formula)
  2 ≠ 1/2 .
```

So `Fsum_eq_prod`/`Fsum_eq_div` genuinely require the all-suffix hypothesis; the global
`P+N ≠ 0` is **not** sufficient. This is invisible on the formal-group domain `(−1,1)`
(where `1+xy>0` always, so no pole ever occurs and the group law is honest), and it does
not contradict any informal claim. It is a caveat for any *real-variable* use of the
n-fold sum with couplings outside `(−1,1)` (e.g. Cayley addresses of `n` with `n` large,
where `aᵢ→1`, or mixed-sign couplings). Verified numerically over 2000 random rational
lists: `E±O=∏(1±aᵢ)` always; `Fsum=(P−N)/(P+N)` exactly when no suffix pole.

## Forwarded

A condensed version of the diagonalization + Cayley-product n-fold law is forwarded to
`eliottcassidy2000/math` as a new result candidate (it sharpens the Part-2/Part-3 facts of
formal_group_s90as.py into one clean closed form with an explicit pole criterion).
