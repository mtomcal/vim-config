#!/bin/sh
root_dir=`pwd`
rm ~/.vimrc
rm -r ~/.vim
ln -s $root_dir/.vimrc-minimal ~/.vimrc
ln -s $root_dir/.vim ~/
ln -s $root_dir/.zshrc ~/
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
source ~/.zshrc
cd .vim
mkdir bundle
ruby update_bundles
