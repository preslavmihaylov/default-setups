#!/bin/bash

# after installation, execute next steps as specified by program output
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# create my common directories
mkdir -p ~/scripts/.system
mkdir -p ~/prg

# install software
brew install mas
brew install git
brew install rar
brew install bear
brew install cmake
brew install cscope
brew install gdb
brew install ctags
brew install node
brew install nvm
brew install yarn
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

# rebind tilde sign to be in the correct place for magic keyboard:
# https://apple.stackexchange.com/questions/329085/tilde-and-plus-minus-%C2%B1-in-wrong-place-on-keyboard
cat << 'EOF' > ~/scripts/.system/tilde-switch.sh && chmod +x ~/scripts/.system/tilde-switch.sh
#!/bin/bash

hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000035,"HIDKeyboardModifierMappingDst":0x700000064},{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035}]}'
EOF

bash -c "cat > ~/Library/LaunchAgents/org.custom.tilde-switch.plist" << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>org.custom.tilde-switch</string>
    <key>Program</key>
    <string>${HOME}/scripts/.system/tilde-switch.sh</string>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <false/>
  </dict>
</plist>
EOF

launchctl load -w -- ~/Library/LaunchAgents/org.custom.tilde-switch.plist

# install dotfiles
git clone --recurse-submodules https://github.com/preslavmihaylov/dotfiles
cd dotfiles && ./install.sh
rm -rf dotfiles

