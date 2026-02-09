#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIGS=(hypr waybar kitty fish)

backup_dir="$HOME/.dotfiles_backup_$(date +%s)"
mkdir -p "$backup_dir"

echo ">> installing fish if missing..."
if ! command -v fish >/dev/null; then
  sudo pacman -S --needed fish
fi

echo ">> setting fish as default shell..."
if [ "$SHELL" != "/usr/bin/fish" ]; then
  chsh -s /usr/bin/fish
fi

link() {
  src="$1"
  dest="$2"

  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "backing up $dest"
    mv "$dest" "$backup_dir/"
  fi

  ln -sfn "$src" "$dest"
  echo "linked $dest"
}

mkdir -p "$HOME/.config"

for cfg in "${CONFIGS[@]}"; do
  src="$DOTFILES_DIR/config/$cfg"
  dest="$HOME/.config/$cfg"

  if [ -d "$src" ]; then
    link "$src" "$dest"
  fi
done

echo "✅ done. log out and back in for fish shell to apply."
