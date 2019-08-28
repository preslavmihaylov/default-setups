#!/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install software
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

# setup neovim providers
pip2 install --user --upgrade pynvim
pip3 install --user --upgrade pynvim
npm install -g neovim
sudo gem install neovim

# setup mac name
sudo scutil --set HostName kingslanding
sudo scutil --set LocalHostName kingslanding
sudo scutil --set ComputerName kingslanding

# install dotfiles
git clone --recurse-submodules https://github.com/preslavmihaylov/dotfiles
cd dotfiles && ./install.sh
rm -rf dotfiles

