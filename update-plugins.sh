#! /bin/bash
#
# update-plugins.sh

git submodule foreach git pull origin master
git submodule update --init --recursive
