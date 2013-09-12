#! /bin/bash
#
# install.sh
# Copyright (C) 2013 sagar <sagar@sagar-liquid>
#
# Distributed under terms of the GNU GPL license.

mv ~/.vimrc ~/.vimrc_bak &> /dev/null

ln -s vimrc ~/.vimrc
ln -s gvimrc ~/.gvimrc
