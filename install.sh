#!/bin/bash

ln -s $HOME/.configuration/.tmux/.tmux.conf $HOME/.tmux.conf
cp .tmux/.tmux.conf.local $HOME/.tmux.conf.local

cp vim/vimrc $HOME/.vimrc

y | sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s zsh/custom/plugins/zsh-autosuggestions $HOME/.oh-my-zsh/custom/pugins/zsh-autosuggestions
ln -s zsh/custom/plugins/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/pugins/zsh-syntax-highlighting

cp zsh/zshrc ~/.zshrc
cp zsh/zprofile ~/.zprofile
