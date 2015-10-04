#!/bin/bash
user=$(echo $USER)

sublime_base_path="/Users/${user}/Library/Application Support/Sublime Text 2"
package_control_install_path="${sublime_base_path}/Installed Packages"
sublime_settings_path="${sublime_base_path}/Packages"
old_sublime_settings_path="${sublime_settings_path}/User"

check_if_program_installed() {
  if hash "$1" 2>/dev/null
  then
    return 0
  else
    return 1
  fi
}

upstall_brew() {
  if [[ $(check_if_program_installed "brew") -eq 0 ]]
  then
    echo "Upgrading homebrew"
    brew update
  else
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
}

install_brew_packages() {
  brew install vim
  brew install cmake
}

add_sublime_settings() {
  echo "Removing previous sublime 2 settings"

  rm -rf "${old_sublime_settings_path}"

  echo "Adding new sublime 2 settings"

  cp -r ./User "${sublime_settings_path}"

  echo "Launching sublime"

  sublime
}

add_vim_settings() {
  echo "Removing existing ~/.vim and ~/.vimrc"

  rm -rf ~/.vim ~/.vimrc

  echo "Adding new ~/.vimrc"

  cp ./.vimrc ~/.vimrc

  echo "Installing vundle"

  git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

  echo "vundle installed"

  echo "Installing plugins"

  vim +PluginInstall +qall

  if [[ -e ~/.vim/bundle/YouCompleteMe ]]; then
    pushd .
    echo "Configuring YouCompleteMe"
    cd ~/.vim/bundle/YouCompleteMe;
    git submodule update --init --recursive;
    ./install.sh
    popd
  fi

  vim +PluginInstall +qall
}

upstall_brew
install_brew_packages
add_sublime_settings
add_vim_settings
