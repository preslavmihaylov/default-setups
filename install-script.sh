#!/bin/bash

# initial upgrade of system
sudo apt-get upgrade -yy
sudo apt-get dist-upgrade -yy

# apt repositories
echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list 
echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list

# ppa
sudo add-apt-repository -yy ppa:nathan-renniewaldock/flux

# repository keys
wget -q -O - "https://dl-ssl.google.com/linux/linux_signing_key.pub" | sudo apt-key add -
curl "https://repo.skype.com/data/SKYPE-GPG-KEY" | sudo apt-key add -

sudo apt-get update

# Installations
sudo apt-get install -yy vim
sudo apt-get install -yy deluge # torrent tracker
sudo apt-get install -yy google-chrome-stable
sudo apt-get install -yy git
sudo apt-get install -yy curl
sudo apt-get install -yy build-essential
sudo apt-get install -yy shutter # screenshot capture sw
sudo apt-get install -yy fluxgui # eye protection sw
sudo apt-get install -yy meld # file diff comparer sw
sudo apt-get install -yy skypeforlinux

# git configurations
git config --global user.email "preslav@pmihaylov.com"
git config --global user.name "PreslavMihaylov"

# add dotfiles
git clone https://github.com/PreslavMihaylov/dotfiles
cp dotfiles/vimrc ~/.vimrc
rm -rf dotfiles
