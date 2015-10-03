#!/bin/sh
root_dir=`pwd`
rm -f ~/.vimrc
rm -fr ~/.vim
rm -fr ~/.zshrc
ln -s $root_dir/.vimrc-nitrous ~/.vimrc
ln -s $root_dir/.vim ~/
ln -s $root_dir/.zshrc ~/
source ~/.zshrc
cd .vim
mkdir bundle
ruby update_bundles
