#!/bin/sh
sudo pacman -Syu --noconfirm zsh kitty hyprlock waybar hyprpaper rofi hyprshot satty

# audio driver
sudo pacman -S --noconfirm pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber
systemctl --user enable --now pipewire pipewire-pulse wireplumber

#file manager
sudo pacman -S --noconfirm thunar thunar-archive-plugin thunar-volman gvfs udisks2 nwg-look

#docker setup
sudo pacman -S --noconfirm docker docker-compose

sudo systemctl start docker.service
sudo systemctl enable docker.service

sudo usermod -aG docker $USER && newgrp docker

sudo pacman -S --noconfirm ttf-jetbrains-mono ttf-jetbrains-mono-nerd

# To install yay uncomment below lines and run chezmoi apply

#sudo pacman -S --needed --noconfirm base-devel
#git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && rm -rf ~/yay

#oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#zsh_theme 
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
