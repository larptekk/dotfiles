#!/usr/bin/env bash
set -e

CONFIGS=(hypr waybar kitty fish)

for cfg in "${CONFIGS[@]}"; do
  target="$HOME/.config/$cfg"
  if [ -L "$target" ]; then
    rm "$target"
    echo "removed $target"
  fi
done

echo "🧹 symlinks removed."
