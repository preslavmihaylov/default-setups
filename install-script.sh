#!/bin/bash

# initial upgrade of system
sudo apt-get upgrade -yy
sudo apt-get dist-upgrade -yy

# add google repository to apt
echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google.list 

# add google repository sign key
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo apt-get update

# Installations
sudo apt-get install -yy vim
sudo apt-get install -yy deluge # torrent tracker
sudo apt-get install -yy google-chrome-stable
sudo apt-get install -yy git
sudo apt-get install -yy gcc

# git configurations
git config --global user.email "preslav@pmihaylov.com"
git config --global user.name "PreslavMihaylov"

# add dotfiles
git clone https://github.com/PreslavMihaylov/dotfiles
cp dotfiles/vimrc ~/.vimrc
rm -rf dotfiles

