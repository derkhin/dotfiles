#!/bin/sh
sudo pacman -Syu --noconfirm zsh kitty hyprlock waybar hyprpaper

# To install yay uncomment below lines and run chezmoi apply

#sudo pacman -S --needed --noconfirm base-devel
#git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && rm -rf ~/yay

#oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#zsh_theme 
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
