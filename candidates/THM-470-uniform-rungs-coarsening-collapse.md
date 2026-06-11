---
id: THM-470-uniform-rungs-coarsening-collapse
source: 01-canon/theorems/THM-470-uniform-rungs-coarsening-collapse.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# THM-470: the algebra ladder above (sign, v₂) — interval structure, the coarsening collapse, and the t=7 wall

**Status:** parts A–B PROVED (short proofs below); part C COMPUTED/VERIFIED
(per-witness independent re-verification; scripts
`04-computation/erdos592_uniform_rungs_kp0611.py`,
`04-computation/erdos592_invariant_wall_kp0611.py`, outputs in
05-knowledge/results/). Part C's master verdict: see inline status.
**Source:** kind-pasteur-2026-06-11-S1 (HYP-2392/2393/2396; continues THM-465 B,
POKE Task 2).

**Setting.** A *feature map* F assigns each lex-ordered pair x <lex y in ℕ³ a
class, independently of any ambient size ("t-independent"); F is *gap-determined*
if F(x,y) = φ(y−x). A *rule* is a set T of classes (blue iff F ∈ T); a rule *wins
at t* if it is triangle-free and hits every binary subgrid on [t]³. An
*F-measurable strong witness* is an infinite rule winning on all of ℕ³ (kills
every binary subgrid of the full grid, hence every full-type set, THM-453 C).

## A. Interval structure and the König equivalence (PROVED)

**A1 (antitonicity).** For any t-independent F: a table winning at t+1 wins at t.
(Restriction: subgrids and triangles of [t]³ are subgrids/triangles of [t+1]³,
and the hitting edge of a subgrid lies inside it.) So the SAT region of every
algebra is an interval [3, t_dead(F)).

**A2 (König equivalence).** An F-measurable strong witness on ℕ³ exists ⟺ the
F-instance is SAT at EVERY finite t (t_dead = ∞).
Proof. (⟹) restriction. (⟸) For each t the set of winning tables, restricted to
the (finite) set of classes realizable at t, is finite, nonempty, and coherent
under restriction (A1's argument). König's lemma yields a thread, i.e. one table
defined on all classes whose restriction wins at every t; its rule graph on ℕ³
is triangle-free (every triangle lives in some [t]³) and hits every binary
subgrid (it lives in some [t]³). ∎
Consequence: the "conjoined-t" SAT of THM-465 B is equivalent to the single
largest-t instance; per-size death anywhere kills the whole rung. The
infinite-witness question for ANY t-independent algebra is a question about
one threshold t_dead(F).

**A3 (coarsening collapse).** If F' refines F (F-classes are unions of
F'-classes), every F-rule is an F'-rule, so t_dead(F) ≤ t_dead(F'); in
particular any algebra FACTORING THROUGH (sign, v₂) — comparisons, tail

## Notes for the formalizer

(none yet)
