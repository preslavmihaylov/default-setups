#!/bin/bash

# initial upgrade of system
sudo apt-get upgrade -yy
sudo apt-get dist-upgrade -yy

# apt repositories
echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

# ppa
sudo add-apt-repository -yy ppa:nathan-renniewaldock/flux

# repository keys
wget -q -O - "https://dl-ssl.google.com/linux/linux_signing_key.pub" | sudo apt-key add -
curl "https://repo.skype.com/data/SKYPE-GPG-KEY" | sudo apt-key add -

sudo apt-get update

# Installations
sudo apt-get install -yy vim
sudo apt-get install -yy vim-gui-common
sudo apt-get install -yy google-chrome-stable
sudo apt-get install -yy git
sudo apt-get install -yy curl
sudo apt-get install -yy build-essential
sudo apt-get install -yy cmake
sudo apt-get install -yy valgrind
sudo apt-get install -yy ctags
sudo apt-get install -yy cscope
sudo apt-get install -yy cgdb
sudo apt-get install -yy tmux
sudo apt-get install -yy libbsd-dev # bsd c library
sudo apt-get install -yy maven
sudo apt-get install -yy python
sudo apt-get install -yy python3
sudo apt-get install -yy python-dev
sudo apt-get install -yy python-pip
sudo apt-get install -yy npm 
sudo apt-get install -yy nodejs
sudo apt-get install -yy shutter # screenshot capture sw
sudo apt-get install -yy fluxgui # eye protection sw
sudo apt-get install -yy meld # file diff comparer sw
sudo apt-get install -yy skypeforlinux

# git configurations
git config --global user.email "preslav@pmihaylov.com"
git config --global user.name "PreslavMihaylov"
git config --system core.editor "vim"

# add bulgarian phonetic keyboard input
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'bg+phonetic')]"

# set default wallpaper
cp ./default_wallpaper.jpg $HOME/Pictures/Wallpapers/
gsettings set org.gnome.desktop.background picture-uri \
    "file://$HOME/Pictures/Wallpapers/default_wallpaper.jpg"

# switch from wayland to xorg in ubuntu 17 for shutter to work
sudo sed /etc/gdm3/custom.conf -i -e \
    's/#WaylandEnable=false/WaylandEnable=false/g'

# add dotfiles
git clone https://github.com/PreslavMihaylov/dotfiles
./dotfiles/install.sh
rm -rf dotfiles
