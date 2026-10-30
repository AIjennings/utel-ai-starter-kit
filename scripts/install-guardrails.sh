#!/usr/bin/env bash
set -e

TARGET_DIR="${1:-$(pwd)}"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p "$TARGET_DIR"
cp "$SOURCE_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
cp "$SOURCE_DIR/CLAUDE.md" "$TARGET_DIR/CLAUDE.md"
cp "$SOURCE_DIR/SECURITY_STANDARD.md" "$TARGET_DIR/SECURITY_STANDARD.md"
cp "$SOURCE_DIR/.cursorrules" "$TARGET_DIR/.cursorrules"

if [ ! -f "$TARGET_DIR/.gitignore" ]; then
  cp "$SOURCE_DIR/.gitignore" "$TARGET_DIR/.gitignore"
fi

echo "[OK] Installed AGENTS.md, CLAUDE.md, SECURITY_STANDARD.md, and .cursorrules into $TARGET_DIR"
