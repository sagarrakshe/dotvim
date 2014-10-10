#! /bin/bash
#
# install.sh
# Copyright (C) 2013 sagar <sagar@sagar-liquid>
#
# Distributed under terms of the GNU GPL license.

echo "Taking backup of existing vimrc files."
mv ~/.vimrc ~/.vimrc_bak &> /dev/null
mv ~/.gvimrc ~/.gvimrc_bak &> /dev/null

echo "Linking to new vimrc and gvimrc files"
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# echo "Installing plugins.."
# git submodule update --init --recursive
# echo "Installed all plugins."

echo "Intalling Fira Mono font.."
sudo cp -r ./font/Fira\ Mono /usr/share/fonts/truetype/
echo "Installed Fira Mono font."
