#! /bin/bash
#
# install.sh
# Copyright (C) 2013 sagar <sagarrakshe2@gmail.com>
#
# Distributed under terms of the GNU GPL license.

echo "Taking backup of existing vimrc files."
mv ~/.vimrc ~/.vimrc_bak &> /dev/null
mv ~/.gvimrc ~/.gvimrc_bak &> /dev/null

echo "Linking to new vimrc and gvimrc files"
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# echo "Intalling Fira Mono font.."
# sudo cp -r ./font/Fira\ Mono /usr/share/fonts/truetype/
# echo "Installed Fira Mono font."

vim +BundleInstall +qall
