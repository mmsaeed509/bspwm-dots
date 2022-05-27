<h1 align="center"> Ozoz bspwm dotfiles for Acer Predator Helios  </h1>

<!-- ###########################################  ########################################### -->

<!-- shields -->

<p align="center">
  <img src="https://img.shields.io/github/license/mmsaeed509/bspwm-dots?style=for-the-badge">
  </br>
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-green?style=for-the-badge">
  <img src="https://img.shields.io/github/issues/mmsaeed509/bspwm-dots?color=purple&style=for-the-badge">
  </br>
  <img src="https://img.shields.io/github/stars/mmsaeed509/bspwm-dots?style=for-the-badge">
  <img src="https://img.shields.io/github/forks/mmsaeed509/bspwm-dots?color=teal&style=for-the-badge">
  <img src="https://img.shields.io/github/repo-size/mmsaeed509/bspwm-dots?color=blueviolet&style=for-the-badge">
  </br>
  <img src="https://img.shields.io/github/languages/count/mmsaeed509/bspwm-dots?color=red&style=for-the-badge">
  <img src="https://img.shields.io/github/languages/code-size/mmsaeed509/bspwm-dots?color=yellow&style=for-the-badge">
  <img src="https://img.shields.io/github/last-commit/mmsaeed509/bspwm-dots?color=deeppink&style=for-the-badge">
</p>

<!-- shields -->

<!-- ###########################################  ########################################### -->

<!-- reviewing themes -->
[![](GIFs/Predator.gif)](https://drive.google.com/file/d/1ia3OG3ZWhcE1rNqaud7cfaXRYcX-wKNx/view?usp=sharing)
<!-- reviewing themes -->

<!-- ###########################################  ########################################### -->

<!-- Table of content -->

### [Table of content](#table-of-content)

+ **Dependencies**
  - [**`Install the programs below in your system`**](#dependencies)
+ **Installation**
  - [**`How To Install dotfiles`**](#installation)
+ **Previews**
  - [**`reviewing available themes`**](#available-themes-previews)

<!-- Table of content -->

<!-- ###########################################  ########################################### -->

<!-- Dependencies -->

### Dependencies

- **WM** :- [**`bspwm`**](https://madnight.github.io/bspwm/) [**`wmname`**](https://archlinux.org/packages/?name=wmname) [**`sxhkd`**](https://wiki.archlinux.org/title/Sxhkd) [**`dunst`**](https://wiki.archlinux.org/title/Dunst)  [**`ksuperkey`**](https://github.com/hanschen/ksuperkey) [**`betterlockscreen`**](https://github.com/betterlockscreen/betterlockscreen)  [**`picom-ibhagwan-git`**](https://aur.archlinux.org/packages/picom-ibhagwan-git) [**`xclip`**](https://wiki.archlinux.org/title/clipboard)

- **Utilities** :- [**`rofi`**](https://github.com/davatorium/rofi) [**`polybar`**](https://github.com/polybar/polybar) [**`xorg-xsetroot`**](https://archlinux.org/packages/extra/x86_64/xorg-xsetroot/) [**`xsettingsd`**](https://wiki.archlinux.org/title/Xsettingsd) [**`xfce4-power-manager`**](https://wiki.archlinux.org/title/Power_management) [**`xfce-polkit`**](https://wiki.archlinux.org/title/Polkit)

- **Terminal Apps** :- [**`alacritty`**](https://alacritty.org/) [**`nvim`**](https://neovim.io/) [**`zsh`**](https://wiki.archlinux.org/title/zsh) [**`powerline`**](https://wiki.archlinux.org/title/Powerline) [**`power10k`**](https://github.com/romkatv/powerlevel10k)  [**`oh my zsh`**](https://ohmyz.sh/)

- **Media** :- [**`viewnior`**](https://archlinux.org/packages/community/x86_64/viewnior/) [**`gwenview`**](https://archlinux.org/packages/extra/x86_64/gwenview/) [**`nitrogen`**](https://wiki.archlinux.org/title/nitrogen) [**`feh`**](https://wiki.archlinux.org/title/feh) [**`thunar`**](https://wiki.archlinux.org/title/thunar) [**`mpd`**](https://wiki.archlinux.org/title/Music_Player_Daemon) [**`ncmpcpp`**](https://wiki.archlinux.org/title/ncmpcpp) [**`mpc`**](https://archlinux.org/packages/extra/x86_64/mpc/) [**`maim`**](https://github.com/naelstrof/maim) [**`Nerd Fonts`**](https://github.com/ryanoasis/nerd-fonts)

- **Text Editor** :- [**`geany`**](https://www.geany.org/) [**`Visual Studio Code`**](https://code.visualstudio.com/) [**`inkdrop`**](https://www.inkdrop.app/) [**`MarkText`**](https://github.com/marktext/marktext)

- **Predator Sense App** :- [**`PredatorSenseCLI`**](https://github.com/JafarAkhondali/acer-predator-turbo-and-rgb-keyboard-linux-module) [**`PredatorSenseGUI`**](https://github.com/zehratullayl/Linux-Predator-GUI) [**`linux-headers`**](https://archlinux.org/packages/core/x86_64/linux-headers/)

<!-- Dependencies -->

<!-- ###########################################  ########################################### -->

<!-- Installation -->

### Installation

~~~bash

git clone https://github.com/mmsaeed509/bspwm-dots.git

cd bspwm-dots

# Copy misc to home #
cp misc/* ~/

# Copy scripts to /bin #
sudo cp bin/* /bin

# Copy config to ~/.config #
cp -r config/* ~/.config

# copy themes, backgrounds, etc.. #
sudo cp -r backgrounds/* /usr/share/backgrounds/

sudo unzip themes.zip -d /usr/share/themes/

cd icons

sudo unzip \*.zip -d /usr/share/icons/

cd ..

# Clean #
cd .. && rm -rf bspwm-dots
~~~

<!-- Installation -->

<!-- ###########################################  ########################################### -->

<!-- Available Themes Previews -->

<h2 align="center">Available Themes Previews</h2>

|Blade|CyberPunk|Hack|
|--|--|--|
| ![](GIFs/Blade.gif) | ![](GIFs/CyberPunk.gif) | ![](GIFs/Hack.gif) |

|Rick|Hack The Box|Hack The Box Colored|
|--|--|--|
| ![](GIFs/Rick.gif) | ![](GIFs/HackTheBox.gif) | ![](GIFs/HackTheBoxColored.gif) |

|BlackArch|Neon|Tigger In Atlantis|
|--|--|--|
| ![](GIFs/BlackArch.gif) | ![](GIFs/Neon.gif) | ![](GIFs/TiggerInAtlantis.gif) |

|Bouquet|Dracula|Nord|
|--|--|--|
| ![](GIFs/Bouquet.gif) | ![](GIFs/Dracula.gif) | ![](GIFs/Nord.gif) |

|Groot|Gruvbox|
|--|--|
| ![](GIFs/Groot.gif) | ![](GIFs/Gruvbox.gif) |

<!-- Available Themes Previews -->

<!-- ########################################### END ########################################### -->
