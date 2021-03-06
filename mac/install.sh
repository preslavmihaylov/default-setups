#!/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
brew cask install alacritty
brew install alacritty

# install apps from app store
mas install 462054704 # Microsoft Word
mas install 462058435 # Microsoft Excel
mas install 462062816 # Microsoft PowerPoint
mas install 784801555 # Microsoft OneNote
mas install 526298438 # Lightshot Screenshot
mas install 1456462087 # All-in-one Messenger

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# configure GOPATH
mkdir -p ~/programming/go/src ~/programming/go/pkg ~/programming/go/bin

# install go binaries
go install github.com/zmb3/gogetdoc
go install golang.org/x/tools/cmd/guru
go install golang.org/x/tools/gopls@latest
go install github.com/davidrjenni/reftools/cmd/fillstruct
go install github.com/rogpeppe/godef
go install github.com/fatih/motion
go install github.com/kisielk/errcheck
go install github.com/go-delve/delve/cmd/dlv
go install github.com/mdempsky/gocode
go install github.com/josharian/impl
go install github.com/golangci/golangci-lint/cmd/golangci-lint
go install github.com/jstemmer/gotags
go install golang.org/x/tools/cmd/gorename
go install golang.org/x/tools/cmd/goimports
go install github.com/stamblerre/gocode
go install github.com/fatih/gomodifytags
go install honnef.co/go/tools/cmd/keyify
go install golang.org/x/lint/golint
go install github.com/koron/iferr
go install github.com/klauspost/asmfmt/cmd/asmfmt
go install github.com/alecthomas/gometalinter

# git configuration
git config --global user.email "preslav@pmihaylov.com"
git config --global user.name "preslavmihaylov"
sudo git config --system core.editor "vim"

# git aliases
git config --global alias.co checkout
git config --global alias.a add
git config --global alias.b branch
git config --global alias.c commit
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

# Add Bulgarian Phonetic to input sources
defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>19529</integer><key>KeyboardLayout Name</key><string>Bulgarian - Phonetic</string></dict>'

# install dotfiles
git clone --recurse-submodules https://github.com/preslavmihaylov/dotfiles
cd dotfiles && ./install.sh
rm -rf dotfiles

