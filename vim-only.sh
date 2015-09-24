#!/bin/sh
root_dir=`pwd`
ln -s $root_dir/.vimrc ~/
ln -s $root_dir/.vim ~/
ln -s $root_dir/.gvimrc ~/
cd .vim
mkdir bundle
ruby update_bundles
