#!/usr/bin/env bash
# Copies the agent rules template into a target project.
#
# Usage:
#   ./install.sh /path/to/project [clean|xml]
#
# Environment:
#   FORCE=1   overwrite an existing AGENTS.md
#
# Variants:
#   clean (default) - AGENTS.md (clean Markdown)
#   xml             - AGENTS.xml-blocks.md content, installed as AGENTS.md
set -euo pipefail

TARGET="${1:-.}"
VARIANT="${2:-clean}"
FORCE="${FORCE:-0}"

case "$VARIANT" in
  clean) SRC_NAME="AGENTS.md" ;;
  xml)   SRC_NAME="AGENTS.xml-blocks.md" ;;
  *)
    echo "Unknown variant: $VARIANT (use clean or xml)" >&2
    exit 1
    ;;
esac

SRC="$(cd "$(dirname "$0")" && pwd)/$SRC_NAME"

if [ ! -f "$SRC" ]; then
  echo "$SRC_NAME not found next to this script" >&2
  exit 1
fi

if [ ! -d "$TARGET" ]; then
  mkdir -p "$TARGET"
  echo "Created target directory: $TARGET"
fi

DEST="$(cd "$TARGET" && pwd)/AGENTS.md"

if [ -f "$DEST" ] && [ "$FORCE" != "1" ]; then
  echo "AGENTS.md already exists at $DEST. Back it up or run with FORCE=1." >&2
  exit 1
fi

cp "$SRC" "$DEST"
echo "Copied $SRC_NAME (variant: $VARIANT) -> $DEST"
echo "Next: adapt the ADAPT markers in section 3 (Docs Workflow Rules)."