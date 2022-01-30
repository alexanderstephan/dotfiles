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

- [Manjaro](https://www.manjaro.org/downloads)
- [neovim](https://neovim.io/)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [fish](https://fishshell.com/)
- [yadm](https://yadm.io/)

## Useful vim bindings:

- Toggle comment in current line or selection: <kbd>Space</kbd> + <kbd>C</kbd> + <kbd>I</kbd>
- Switch branch: <kbd>Space</kbd> + <kbd>G</kbd> + <kbd>B</kbd>
- Go to definition: <kbd>G</kbd> + <kbd>D</kbd>
- Go to implementation: <kbd>G</kbd> + <kbd>I</kbd>
- Rename variable: <kbd>Space</kbd> + <kbd>R</kbd> + <kbd>N</kbd>
- Format selected code: <kbd>Space</kbd> + <kbd>F</kbd>
- Show documentation in new window: <kbd>K</kbd>
- Fix formatting: <kbd>Space</kbd> + <kbd>A</kbd> + <kbd>M</kbd>
- Open fuzzy finder: <kbd>Space</kbd> + <kbd>F</kbd> + <kbd>F</kbd>
- Toggle floating terminal: <kbd>F1</kbd>
- Open NERDTree: <kbd>Ctrl</kbd> + <kbd>N</kbd>

