# Dotfiles & Configs
My linux configs repo

Most referent to qtile and alacrity are from https://github.com/antoniosarosi/dotfiles


### How to install
Install dependencies
```bash
pacman -S xorg picom sddm qtile alacritty nvim nodejs-lts-fermium npm python-pip
yay -S nerd-fonts-ubuntu-mono
pip3 install pynvim
```
Download bare repository
```bash
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
git clone --bare https://www.github.com/ehf32/dotfiles $HOME/.dotfiles.git
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

