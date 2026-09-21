#!/bin/bash
# On-demand backup of the installed ideation-sidekick-aai skill into this repo.
set -euo pipefail

SRC="/Users/hrn/.config/muse/skills/ideation-sidekick-aai/SKILL.md"
REPO="$(cd "$(dirname "$0")" && pwd)"
DST="$REPO/SKILL.md"

if [ ! -f "$SRC" ]; then
  echo "ERROR: source not found: $SRC" >&2
  exit 1
fi

cp "$SRC" "$DST"
cd "$REPO"

if git diff --quiet -- SKILL.md && git diff --cached --quiet -- SKILL.md; then
  echo "No changes to back up."
else
  git add SKILL.md
  git commit -m "Backup SKILL.md ($(date -u +%Y-%m-%dT%H:%M:%SZ))"
  echo "Committed."
fi

if git remote get-url origin >/dev/null 2>&1; then
  git push origin main
else
  echo "No 'origin' remote yet — backup is local only. See README.md."
fi
