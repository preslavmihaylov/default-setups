#!/bin/bash

arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"


# install software
brew install mas
brew install git
brew install bear
brew install cmake
brew install cscope
brew install gdb
brew install ctags
brew install node
brew install neovim
brew install python
brew install python@2
brew install tmux
brew install wget
brew install golang
brew install the_silver_searcher # ag command
brew install alacritty
brew install ffmpeg
brew install tmux
brew install watchman
brew install jq

# install apps from app store
mas install 462054704 # Microsoft Word
mas install 462058435 # Microsoft Excel
mas install 462062816 # Microsoft PowerPoint
mas install 784801555 # Microsoft OneNote
mas install 1456462087 # All-in-one Messenger

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# configure GOPATH
mkdir -p ~/prg/go/src ~/prg/go/pkg ~/prg/go/bin

# install go binaries
go install golang.org/x/tools/gopls@latest
go install github.com/arl/gitmux@latest

# git configuration
git config --global user.email "preslav@pmihaylov.com"
git config --global user.name "preslavmihaylov"
sudo git config --system core.editor "vim"

# git aliases
git config --global alias.co checkout
git config --global alias.a add
git config --global alias.b branch
git config --global alias.c commit
git config --global alias.p push
git config --global alias.pl pull
git config --global alias.l log
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'

# setup neovim providers
pip2 install --user --upgrade pynvim
pip3 install --user --upgrade pynvim
npm install -g neovim
sudo gem install neovim

# setup mac name
sudo scutil --set HostName kingslanding
sudo scutil --set LocalHostName kingslanding
sudo scutil --set ComputerName kingslanding

# setup key repeating
defaults write -g ApplePressAndHoldEnabled -bool false

# rebind tilde sign to be in the correct place for magic keyboard - https://apple.stackexchange.com/questions/329085/tilde-and-plus-minus-%C2%B1-in-wrong-place-on-keyboard
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000035,"HIDKeyboardModifierMappingDst":0x700000064},{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035}]}'

# install dotfiles
git clone --recurse-submodules https://github.com/preslavmihaylov/dotfiles
cd dotfiles && ./install.sh
rm -rf dotfiles

