# dotfiles
Just a backup for my dot files for the i3/sway/macOS window manager 🐧

## How to install

Fresh Arch Linux (or an Arch-based distro such as Manjaro)

```bash
sudo pacman -Syu --noconfirm &&
sudo pacman -S git &&
git clone https://aur.archlinux.org/aura-bin.git &&
cd aura-bin &&
makepkg &&
sudo pacman -U &&
aura -Syu yadm-git &&
yadm clone https://github.com/alexanderstephan/dotfiles.git
```

macOS
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
brew install yadm &&
yadm clone https://github.com/alexanderstephan/dotfiles
```

## Programs and projects used

- [Arch Linux](https://archlinux.org/) / [Manjaro](https://www.manjaro.org/downloads)
- [neovim](https://neovim.io/)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [fish](https://fishshell.com/)
- [tmux](https://github.com/tmux/tmux)
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

## Useful tmux bindings:

Prefix is <kbd>Ctrl</kbd> + <kbd>A</kbd>.

- Reload config: <kbd>Prefix</kbd> + <kbd>R</kbd>
- Split horizontally (same path): <kbd>Prefix</kbd> + <kbd>|</kbd>
- Split vertically (same path): <kbd>Prefix</kbd> + <kbd>-</kbd>
- Navigate panes/splits (vim-aware): <kbd>Ctrl</kbd> + <kbd>H</kbd> / <kbd>J</kbd> / <kbd>K</kbd> / <kbd>L</kbd>
- Rename window: <kbd>Prefix</kbd> + <kbd>,</kbd>
- Set pane title: <kbd>Prefix</kbd> + <kbd>T</kbd>
- Start selection (copy mode): <kbd>V</kbd>
- Rectangle/block selection: <kbd>Ctrl</kbd> + <kbd>V</kbd>
- Copy selection: <kbd>Enter</kbd>

