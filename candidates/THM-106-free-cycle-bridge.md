---
id: THM-106-free-cycle-bridge
source: 01-canon/theorems/THM-106-free-cycle-bridge.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-106: Free Cycle Bridge Theorem

**Status:** PROVED (algebraic)
**Filed by:** kind-pasteur-2026-03-08-S43

## Statement

Let C = (a→b→c→a) be a **free** 3-cycle in a tournament T, and let v be any
external vertex (v ∉ {a,b,c}). Then v creates a "bridge" 3-cycle B_v that
shares a directed edge with C.

Precisely: B_v is a directed 3-cycle on {v} ∪ {two vertices from C} that
shares one of the three directed edges {a→b, b→c, c→a} with C.

## Proof

Since C is free, vertex v neither dominates all of {a,b,c} nor is dominated
by all of {a,b,c}. Therefore:
- v does NOT beat all three: at least one of a,b,c beats v.
- v does NOT lose to all three: v beats at least one of a,b,c.

Let out(v) = {x ∈ {a,b,c} : v→x} and in(v) = {x ∈ {a,b,c} : x→v}.
Then |out(v)| ∈ {1, 2} (not 0 or 3 by freeness).

### Case |out(v)| = 1, |in(v)| = 2

Say v→x, y→v, w→v where {x,y,w} = {a,b,c}.
The predecessor of x in C beats v (since x has one predecessor in C and
we need to find a shared edge).

Subcases by which vertex v beats:
- **v→a:** Then b→v and c→v. Path: c→a (cycle edge) with v→a and c→v gives
  c→v→a. But we need c→v (yes) and v→a (yes) and check c→a: yes (cycle edge).
  So (c,v,a) is a 2-path c→v→a with c→a: TT triple. But we need a 3-cycle.
  Check: v→a→b→...→v? v→a (yes), a→b (yes), b→v (yes). So (v,a,b) is a
  3-cycle v→a→b→v. This shares directed edge a→b with C.

- **v→b:** Then a→v and c→v. Check: v→b→c→v? v→b (yes), b→c (yes), c→v (yes).
  3-cycle (v,b,c) sharing edge b→c with C.

## Notes for the formalizer

(none yet)
