# candidates/

Formalization targets, synced from `eliottcassidy2000/math` by `sync-candidates.sh`.

Each candidate is a file `<id>.md` with:

```markdown
---
id: <stable id, e.g. redei-theorem>
source: <math repo path, e.g. 01-canon/theorems/redei.md>
source_commit: <git sha of the math repo when synced>
status: open            # open | in-progress | formalized | blocked
---

## Informal statement
<the statement, copied verbatim from the source>

## Notes for the formalizer
<the Mathlib pieces likely needed, known pitfalls, partial progress>
```

Workflow: the formalizer picks an `open` candidate, formalizes it into `Math/**`, and on a
green `lake build` deletes the candidate and commits both changes together. A candidate that
turns out to be false or under-specified is marked `blocked` and a court case is opened in
the informal repo (see CLAUDE.md). This directory is **exempt** from the `sorry`-free gate —
it holds targets, not proofs.
