# Small-mu support core

Source candidate: `candidates/THM-008-mu-trivial-small-n.md`.

Formalized in `Math/Tournaments/SmallMu.lean`:

- If a tournament has at most five vertices and `v,a,b` are the three distinct
  vertices of a directed triangle, then deleting `{v,a,b}` leaves at most two
  vertices.
- Consequently no vertex-disjoint odd cycle can live in the remaining support,
  because any directed odd cycle in a loopless tournament needs at least three
  vertices.

The useful general pattern is not specific to `5`: if the deleted support has
size `s`, then all disjoint odd-cycle contributions vanish whenever
`Fintype.card V - s < 3`.  For the `mu(C)` factor in THM-008, `s = 3`.

Next formalization step:

- Add repo-level definitions for the conflict graph/independence polynomial
  behind `mu(C)`.
- Prove a generic lemma: if no odd-cycle support remains, then the restricted
  conflict graph is empty and its independence polynomial evaluates to `1`.
- THM-008 should then be a one-line corollary of the support bound plus that
  empty-conflict lemma.
