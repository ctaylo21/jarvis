#!/bin/sh
echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Greetings. Preparing to power up and begin diagnostics.$(tput sgr 0)"
echo "---------------------------------------------------------"

INSTALLDIR=$PWD

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Checking for Homebrew installation.$(tput sgr 0)"
echo "---------------------------------------------------------"
brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
  echo "---------------------------------------------------------"
  echo "$(tput setaf 2)JARVIS: Homebrew is installed.$(tput sgr 0)"
  echo "---------------------------------------------------------"
else
  echo "---------------------------------------------------------"
  echo "$(tput setaf 3)JARVIS: Installing Homebrew. Homebrew requires osx command lines tools, please download xcode first$(tput sgr 0)"
  echo "---------------------------------------------------------"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing system packages.$(tput sgr 0)"
echo "---------------------------------------------------------"

packages=(
  "git"
  "node"
  "ruby"
  "tmux"
  "neovim"
  "python3"
  "zsh"
  "ripgrep"
  "fzf"
  "z"
)

for i in "${packages[@]}"
do
  brew install $i
  echo "---------------------------------------------------------"
done

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing Python NeoVim client.$(tput sgr 0)"
echo "---------------------------------------------------------"

pip3 install neovim

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing node neovim package$(tput sgr 0)"
echo "---------------------------------------------------------"

npm install -g neovim

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing spaceship prompt$(tput sgr 0)"
echo "---------------------------------------------------------"

npm install -g spaceship-prompt

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing vim linter (vint)$(tput sgr 0)"
echo "---------------------------------------------------------"

pip3 install vim-vint

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing bash language server$(tput sgr 0)"
echo "---------------------------------------------------------"

npm i -g bash-language-server

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing colorls$(tput sgr 0)"
echo "---------------------------------------------------------"

gem install colorls

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing system fonts.$(tput sgr 0)"
echo "---------------------------------------------------------"

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

localGit="/usr/local/bin/git"
if ! [[ -f "$localGit" ]]; then
  echo "---------------------------------------------------------"
  echo "$(tput setaf 1)JARVIS: Invalid git installation. Aborting. Please install git.$(tput sgr 0)"
  echo "---------------------------------------------------------"
  exit 1
fi

# Create backup folder if it doesn't exist
mkdir -p ~/.local/share/nvim/backup

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing oh-my-zsh.$(tput sgr 0)"
echo "---------------------------------------------------------"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  echo "---------------------------------------------------------"
  echo "$(tput setaf 2)JARVIS: oh-my-zsh already installed.$(tput sgr 0)"
  echo "---------------------------------------------------------"
fi

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing zsh-autosuggestions.$(tput sgr 0)"
echo "---------------------------------------------------------"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing vtop.$(tput sgr 0)"
echo "---------------------------------------------------------"
npm install -g vtop

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing Neovim plugins and linking dotfiles.$(tput sgr 0)"
echo "---------------------------------------------------------"

source install/backup.sh
source install/link.sh
nvim +PlugInstall +qall
nvim +UpdateRemotePlugins +qall

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing Space vim-airline theme.$(tput sgr 0)"
echo "---------------------------------------------------------"

cp ~/.config/nvim/space.vim ~/.config/nvim/plugged/vim-airline-themes/autoload/airline/themes/space.vim

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Installing tmux plugin manager.$(tput sgr 0)"
echo "---------------------------------------------------------"

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ~/.tmux/plugins/tpm/scripts/install_plugins.sh
fi

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: Switching shell to zsh. You may need to logout.$(tput sgr 0)"
echo "---------------------------------------------------------"

sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

echo "---------------------------------------------------------"
echo "$(tput setaf 2)JARVIS: System update complete. Currently running at 100% power. Enjoy.$(tput sgr 0)"
echo "---------------------------------------------------------"

exit 0
