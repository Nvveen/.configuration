#!/bin/bash

ln -s $HOME/.configuration/.tmux/.tmux.conf $HOME/.tmux.conf
cp .tmux/.tmux.conf.local $HOME/.tmux.conf.local

cp vim/vimrc $HOME/.vimrc

cp zsh/zshrc ~/.zshrc
cp zsh/zprofile ~/.zprofile
