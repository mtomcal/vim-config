#!/bin/sh
root_dir=`pwd`
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash
ln -s $root_dir/.vimrc ~/
ln -s $root_dir/.vim ~/
ln -s $root_dir/.gvimrc ~/
ln -s $root_dir/.zshrc ~/
ln -s $root_dir/.atom ~/
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
source ~/.zshrc
mkdir ~/bin
mkdir ~/Projects
cd .vim
mkdir bundle
ruby update_bundles
apm install --packages-file .atom/install.txt
cd $root_dir
nvm install v0.12.0
npm install -g gulp jshint jsxhint
