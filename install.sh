#! /bin/sh
#
# install.sh
# Copyright (C) 2018 daniel <wangdongyuan@zmeng123.com>
#
# Distributed under terms of the ZMENG license.
#


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
