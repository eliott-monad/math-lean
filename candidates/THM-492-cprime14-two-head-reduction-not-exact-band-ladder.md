---
id: THM-492-cprime14-two-head-reduction-not-exact-band-ladder
source: 01-canon/theorems/THM-492-cprime14-two-head-reduction-not-exact-band-ladder.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-492 — C′(14) does NOT reduce exactly to C′(5)-on-the-3-core ∪ the mod-2/mod-7 fiber; the band ladder and the stranger dodge

**Status:** PROVED (degeneration lemma; band criterion; fibered-shell reduction; the family
theorem, part-finite-verification) + VERIFIED (exact integer/ℚ arithmetic throughout; 688 joint
failures; the 936-instance family exhaustive). **Source:** claudebox-2026-06-11-S7, executing
t-0122 / HYP-2436 Test 3 (user dispatch: "does C′(14) reduce exactly to C′(5)-on-the-3-core ∪ the
THM-421 mod-2/mod-7 fiber? attack LRC 14 creatively").
**Companions:** THM-491 (ramification tower), THM-421 (divisor-clock peel), THM-420 (k-clock /
transversal), THM-398 (C′ reduction + dominance dodge), S622-era twisted-shell dodge, S643 fiber
windows. **Normalization:** canon (n=14 runners, 13 speeds, M(S)=max_t min_v‖vt‖; C′(14):
multiple-of-14 ⟹ M > 1/14).

## 0. Primitivity hygiene (a statement-level correction to C′)

C′ as literally stated in THM-398 §0 (no gcd condition) is **false by dilation**:
`S = 2·{1,…,13} = {2,4,…,26}` contains 14 and has `M(S) = M({1,…,13}) = 1/14` exactly (tight) —
verified exact, witness structure at t = 1/28. Since M is dilation-invariant, C′ must be read for
**primitive** sets (`gcd(S) = 1`), which is what every verification (THM-420's "gcd-1 configs",
HYP-2102's boxes) already used. The reduction C′ ⟹ LRC is unaffected: apply Lemma A / C′ to the
primitive representative. All sets below are primitive with a multiple of 14.

## 1. The degeneration lemma — the answer is NO, and why

**Lemma (proved).** Let `3 | v`, `27 ∤ v`, and `gcd(a, 27) = 1`. Then
`‖v a/27‖ = ‖(v/3)·a/9‖ ≥ 1/9 > 1/14`.
*Proof.* Write v = 3w with 9 ∤ wa (a is a unit, w ≢ 0 mod 9 since 27 ∤ v); a nonzero residue mod 9
has clock distance ≥ 1/9. ∎ (Exhaustively confirmed over all residues: 0 violations.)

**Consequence.** At level 1/14, the 3-core of the shell-27 problem carries **only the divisor
conditions** {3|v, 9|v, 27|v}: the THM-491 descent 27→9 is arithmetically exact, but the
**forbidden band does not rescale**. The descended shell-9 problem has band {0}; C′(5) proper
(level 1/5 on its shell 9 = 2·5−1) has band {0, ±1}. The bands agree iff `1/n ∈ [1/9, 2/9)`,
i.e. n ∈ {5,…,9}. At n = 14 the 3-core head **degenerates to divisibility — C′(5) never appears.**

**Non-necessity witness (verified exact).** `S = {1,…,12, 28}`: its 3-core ÷3 = {1,2,3,4} is the
**tight** n=5 AP (M = 1/5, blocked at C′(5)'s own band), yet S is loose: M(S) = 1/13, with a
shell-27 unit twist t = 2/27 certifying (min ‖vt‖ = 2/27 > 1/14). So "C′(5) on the 3-core" is not
necessary for C′(14)-looseness.

## 2. The band criterion and the fibered-shell reduction (the corrected heads)

## Notes for the formalizer

(none yet)
