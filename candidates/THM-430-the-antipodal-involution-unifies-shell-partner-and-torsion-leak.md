---
id: THM-430-the-antipodal-involution-unifies-shell-partner-and-torsion-leak
source: 01-canon/theorems/THM-430-the-antipodal-involution-unifies-shell-partner-and-torsion-leak.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-430 — The antipodal involution σ:x↦−x unifies the shell-partner floor (mod q) and the torsion leak (mod n); the signed floor is always a genuine σ-orbit, never the half-turn

**Status:** PROVED (σ-orbit recast, the never-self-partner law, the CRT fiber split, the
odd-shell/even-clock face split) + VERIFIED (n=5,6,7 minimizers + the 5 published HYP-2296
minimizers + the face table n=5..15). Answers **poke Steering Task 1** (connect the binding
shell-partner `q=a+b` to the prime-torsion / fiber picture).
**Source:** opus-2026-06-06-S702. Builds on THM-425 (synchronization), THM-426 (cuts), THM-429 /
HYP-2296 (signed floor = max-cut LRC, binding pair `a+b=q=denom t*`), THM-421/427 (torsion leak),
THM-428 (two-tower clock⊗shell). Convention as THM-429.

## The unifying object

> The norm `‖·‖` is invariant under the **antipodal involution** `σ_N : x ↦ −x` on `ℤ/N`
> (`‖−x‖=‖x‖`). Every loneliness modulus in the LRC apparatus — clock `n`, shell `2n−1`, and the
> *actual optimal witness denominator* `q = a+b` (HYP-2296) — carries this same `σ`. The fixed-point
> set of `σ_N` is the **2-torsion** `Fix(σ_N) = {x : 2x≡0} = T_2^{(N)} = {0, N/2}` (the second
> element only when `N` even). This single involution organizes both the shell-partner floor and the
> torsion leak.

## The theorem

> **(A) Synchronization = σ-invariance (recast of THM-425 L0).** `a+b ≡ 0 (mod q) ⟺ b ≡ σ_q(a)`, so
> a `q`-shell-partner pair `{a,b}` is precisely a **`σ_q`-orbit**, and `‖a·k/q‖ = ‖b·k/q‖` for all
> `k` is exactly the `σ`-invariance of `‖·‖`. Shell-partners *are* the antipodal orbits.
>
> **(B) Self-partners = the 2-torsion (the half-turn).** A pair is a **self-partner** (`a≡b`, i.e. a
> single relative speed equal to its own partner) iff `a ∈ Fix(σ_q) = {0, q/2}`. A nonzero
> self-partner exists **iff `q` is even**, and it is the half-turn `q/2`. (n=14 clock: `q=n=14`,
> half-turn `7 = 14/2` — poke's leak; verified `q=20→{0,10}`, `42→{0,21}`, `8→{0,4}`.)
>
> **(C) The signed floor is NEVER a self-partner (PROVED).** The binding pair of `Gstar(S)` is always
> a *genuine* `σ_q`-2-orbit (`a≢b mod q`). *Proof.* A half-turn relative speed `w=q/2` gives
> `‖w·k/q‖ = ‖k/2‖ ∈ {0, ½}`: it is `0` when `k` even (would kill loneliness, so the maximin forces
> `k` odd) and `½` when `k` odd (the global maximum of `‖·‖`). Either way `w=q/2` is never the
> *minimising* (binding) speed of a positive floor `M=k/q < ½`. ∎ So the floor lives on the genuine
> orbits, and the half-turn 2-torsion — the very leak poke names — is structurally *excluded* from
> setting the signed floor. **Verified:** all 12 minimizers (searched + published) have
> `self_partner = False`.
>
> **(D) CRT fiber split — σ is trivial on the 2-fiber (PROVED + the answer to "mod 2 vs mod p").**

## Notes for the formalizer

(none yet)
