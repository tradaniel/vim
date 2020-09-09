#! /bin/sh
#
# install.sh
# Copyright (C) 2018 daniel <wangdongyuan@zmeng123.com>
#
# Distributed under terms of the ZMENG license.
#


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PluginInstall +qall
