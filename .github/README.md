# dotfiles
Just a backup for my dot files for the i3/sway/macOS window manager 🐧

## How to install

Fresh Arch Linux or Manjaro

```bash
sudo pacman -Syu --noconfirm &&
sudo pacman -S git &&
git clone https://aur.archlinux.org/aura-bin.git &&
cd aura-bin &&
makepkg &&
sudo pacman -U &&
aura -Syu yadm-git &&
yadm clone https://github.com/overclockedllama/dotfiles.git
```

macOS
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
brew install yadm &&
yadm clone https://github.com/alexanderstephan/dotfiles
```

## Programs and projects used

- [Manjaro Gnome](https://www.manjaro.org/downloads/official/gnome/)
- [neovim](https://neovim.io/)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [fish](https://fishshell.com/)
- [yadm](https://yadm.io/)
