#!/usr/bin/env bash
# sync-candidates.sh — pull newly-proved results from the informal math repo into
# candidates/ as formalization targets. Idempotent: existing candidates are left alone,
# already-formalized results are skipped.
#
# Usage: ./sync-candidates.sh [--dry-run]
#
# Env:
#   MATH_REPO_URL   informal repo (default: https://github.com/eliottcassidy2000/math.git)
#   SOURCE_DIRS     space-separated dirs in the math repo to scan
#                   (default: "01-canon/theorems 05-knowledge/results")
set -euo pipefail

DRY_RUN=0
[ "${1:-}" = "--dry-run" ] && DRY_RUN=1

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MATH_REPO_URL="${MATH_REPO_URL:-https://github.com/eliottcassidy2000/math.git}"
SOURCE_DIRS="${SOURCE_DIRS:-01-canon/theorems 05-knowledge/results}"
CAND_DIR="$REPO_ROOT/candidates"

WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

echo "[sync] cloning $MATH_REPO_URL (shallow)…"
git clone --depth 1 "$MATH_REPO_URL" "$WORK/math" >/dev/null 2>&1
SRC_SHA="$(git -C "$WORK/math" rev-parse --short HEAD)"

# A result is "already formalized" if its id appears in any provenance header under Math/.
already_formalized() { grep -rqi -- "$1" "$REPO_ROOT/Math" 2>/dev/null; }

new=0
for dir in $SOURCE_DIRS; do
  [ -d "$WORK/math/$dir" ] || continue
  while IFS= read -r -d '' f; do
    base="$(basename "$f")"
    id="${base%.*}"
    # skip non-result files and existing candidates
    [ -f "$CAND_DIR/$id.md" ] && continue
    already_formalized "$id" && continue

    rel="${f#"$WORK/math/"}"
    stmt="$(sed -n '1,40p' "$f")"
    if [ "$DRY_RUN" -eq 1 ]; then
      echo "[sync] would add candidate: $id  (from $rel)"
    else
      {
        printf -- '---\n'
        printf 'id: %s\n' "$id"
        printf 'source: %s\n' "$rel"
        printf 'source_commit: %s\n' "$SRC_SHA"
        printf 'status: open\n'
        printf -- '---\n\n## Informal statement\n\n%s\n\n## Notes for the formalizer\n\n(none yet)\n' "$stmt"
      } > "$CAND_DIR/$id.md"
      echo "[sync] added candidate: $id"
    fi
    new=$((new + 1))
  done < <(find "$WORK/math/$dir" -type f \( -name '*.md' -o -name '*.tex' \) -print0)
done

echo "[sync] done — $new new candidate(s) from math@$SRC_SHA"
