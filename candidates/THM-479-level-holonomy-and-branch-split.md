---
id: THM-479-level-holonomy-and-branch-split
source: 01-canon/theorems/THM-479-level-holonomy-and-branch-split.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-479 — Level permutations via pair-orbit holonomy; the branch-split Burnside for A049313

**Status:** PROVED (claudebox-2026-06-11-S2) — an independent re-derivation, by a new
elementary argument, of Babai–Cameron Lemma 7.1 + Theorem 7.2 (EJC 7 (2000) #R38; proved
1981-82, manuscript lost, published 2000), found here BEFORE the literature check and
verified exhaustively (all cycle types n ≤ 10, zero discrepancies; closed form matches
OEIS A049313 terms 1..16 exactly). The branch split (parts 3-4) appears to be new.
**Provenance:** claudebox-2026-06-11-S2, dispatch: RM(r,m)⊥ = RM(m−r−1,m) duality as a lens.
**Companions:** THM-474 (tilings = labeled switching classes), THM-477 (blue code),
THM-430 (antipodal involution), OPEN-Q-060. **Literature:** Babai–Cameron EJC 2000
(Lemma 7.1 "level", Thm 5.1, Thm 7.2, Lemma 3.1); Mallows–Sloane SIAM JAM 28 (1975);
Cameron, Math. Z. 157 (1977); OEIS A049313 (Cameron 1999), A002854.

## Setup

Fix the reference tournament T₀ (i→j for i<j) and identify tournaments on [n] with flip
vectors x ∈ 𝔽₂^E, E = E(K_n). S_n acts AFFINELY: x ↦ P_π x + t_π, where P_π permutes pair
coordinates and the cocycle t_π(e) = 1 iff transporting T₀'s orientation along π reverses it
at e. Switching translates by the cut space C (dim n−1). The graph case is the same picture
with t ≡ 0: tournaments are the odd affine torsor over the even/linear graph world (LEM-004).
π fixes some switching class of tournaments ⟺ ∃x, c: (P_π+1)x = t_π + c ⟺ t_π ∈ Im(P_π+1)+C.

## Statement

1. **(Level law; = BC Lemma 7.1.)** π fixes a switching class of tournaments iff π is
   **level**: all cycle lengths have the same 2-adic valuation. (Equivalently: all cycles
   odd — i.e. π of odd order — or all cycles even with equal v₂.)
2. **(Burnside; = BC Thm 7.2.)** With o₂(μ) = Σᵢ⌊ℓᵢ/2⌋ + Σ_{i<j} gcd(ℓᵢ,ℓⱼ) (pair-orbits)
   and k(μ) = #cycles, the number of switching classes of tournaments up to isomorphism is
   A049313(n) = Σ_{μ all-odd} 2^{o₂−k+1}/z_μ + Σ_{μ all-even, equal v₂} 2^{o₂−k}/z_μ.
3. **(Branch split — new.)** Write A049313(n) = N_odd(n) + N_lev(n) for the two sums in (2).
   N_lev vanishes for odd n (no all-even partitions); for even n ≥ 4 both branches are
   separately INTEGERS (verified n ≤ 16; only n = 2 splits fractionally as 1/2 + 1/2):
   N_odd = 1, 1/2*, 1, 1, 2, 4, 12, 64, 792, 19296, 886288, 75346496, … and
   N_lev(2t) = 1/2*, 1, 2, 15, 280, 23464, 6819360, 6981258440 (t = 1..8). Neither branch
   sequence, nor the count of level permutations itself, is in OEIS (checked 2026-06-11) —
   flagged for contribution. Branch integrality for n ≥ 3 is observed, not yet explained.
4. **(Where the obstruction lives.)** The proof shows the cocycle's holonomy is supported
   EXACTLY on the diameter pair-orbits {i, π^{ℓ/2}(i)} of even cycles — the antipodal /
   half-turn pairs (THM-430's σ-self-partners; THM-447's twin pairs; the same pairs whose

## Notes for the formalizer

(none yet)
