#!/bin/sh
root_dir=`pwd`
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash
ln -s .vimrc ~/
ln -s .vim ~/
ln -s .gvimrc ~/
ln -s .zshrc ~/
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
source ~/.zshrc
mkdir ~/bin
mkdir ~/Projects
cd ~/.vim
mkdir bundle
ruby update_bundles
cd $root_dir
nvm install v0.12.0
npm install -g gulp jshint jsxhint
