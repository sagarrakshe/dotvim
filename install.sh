#! /bin/bash
#
# install.sh
# Copyright (C) 2013 sagar <sagar@sagar-liquid>
#
# Distributed under terms of the GNU GPL license.

mv ~/.vimrc ~/.vimrc_bak &> /dev/null
mv ~/.gvimrc ~/.gvimrc_bak &> /dev/null

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

vim +BundleInstall +qall
sudo cp -r ./font/Fira Mono /usr/share/fonts/truetype/
