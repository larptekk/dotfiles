# 🖤 dotfiles

my personal arch linux rice using:
- hyprland
- waybar
- kitty
- fish

## 📦 contents
- `config/hypr/` → hyprland config
- `config/waybar/` → waybar config
- `config/kitty/` → kitty config
- `config/fish/` → fish shell config

## 📦 needed packages

```
sudo pacman -S --needed pipewire git fish swww waybar kitty hyprland wofi blueman bluez bluez-utils grim slurp
```

## 🚀 install
```bash
git clone https://github.com/larpmaxxer/dotfiles
cp ~/dotfiles/config.fish ~/.config/fish/
cp ~/dotfiles/config.jsonc ~/.config/waybar
cp ~/dotfiles/style.css ~/.config/waybar
cp ~/dotfiles/kitty.conf ~/.config/kitty/
cp ~/dotfiles/hyprland.conf ~/.config/hypr/
cp ~/dotfiles/feel.css ~/.config/wofi/
```

