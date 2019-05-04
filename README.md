A collection of most of my settings on Linux. Finally made the switch to Wayland and I couldn't be happier.
### What it looks like
![Basic setup](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")
[Wallpaper](https://positriondream.com)
### Quick guide on installing Arch
[Click me!](https://discolovers.de/articles/2018-05/arch-rice-with-encryption) 
 
### Key programs for my workflow:
- [Sway](https://github.com/swaywm/sway)
- [Waybar](https://github.com/Alexays/Waybar/)
- [Qutebrowser](https://github.com/qutebrowser/qutebrowser)
- [Zathura](https://github.com/pwmt/zathura)
- [cmus](https://cmus.github.io/)
- [neovim](https://neovim.io/)
- [calcurse](https://www.calcurse.org/)
- [grim](https://github.com/emersion/grim)

### Battery life improvements on Arch
- [Powertop](https://software.intel.com/en-us/articles/powertop-primer-1/)
```shell
sudo pacman -S powertop
powertop --calibrate
systemctl enable powertop.service
```
- [TLP](https://wiki.archlinux.org/index.php/TLP)
```shell
sudo pacman -S tlp
systemctl enable tlp.service
```

