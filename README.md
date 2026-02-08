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
- `install.sh` → symlink installer with backups

## 🚀 install

before the installation, please install and change your shell to fish
```
sudo pacman -S fish
chsh -s /usr/bin/fish
```
then just run 

```bash
git clone https://github.com/larptekk/dotfiles
cd dotfiles
chmod +x install.sh
./install.sh
```

## 📦 needed packages

```
sudo pacman -S --needed git swww waybar kitty hyprland wofi blueman bluez bluez-utils
```

## 🖥️ default desktop
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/1ddfaec6-be6e-47e4-9c35-9357b0bd2ecf" />

## 🎨 wallpaper
https://external-preview.redd.it/LqJxJWL0fLswSJ29rluMQlBXPntbaPT9B1L1Eb58AjM.png?format=pjpg&auto=webp&s=e0a77171386cf841d3ff57405399094e35208129

im still working on audio so right now it will only work via headphones/bluetooth
