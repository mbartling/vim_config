#!/bin/zsh

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}
if [[ "${machine}" == "Mac" ]]; then 
  echo "Configuring Mac"; 
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Installing Homebrew (Complete)"
  echo "Installing vim"
  brew install python3
  echo "Changing ownership of homebrew share"
  sudo chown -R $(whoami) /usr/local/share
  alias python="python3"
  brew install vim 
  brew install git
fi
echo "Installing Oh my ZSH"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing Oh my ZSH (Complete)"
echo "Installing zsh plugins"
export ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
echo "Copying .zshrc"
cp .zshrc ~
sh configure_vim.sh
