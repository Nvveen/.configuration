#!/bin/bash

ln -sf $PWD/.tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $PWD/.tmux/.tmux.conf.local $HOME/.tmux.conf.local

cp vim/vimrc $HOME/.vimrc
ln -sf $PWD/vim/vimrc $HOME/.vimrc
ln -sf $PWD/vim/vim_runtime $HOME/.vim_runtime

y | sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s $PWD/ohmyzsh/custom/plugins/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
ln -s $PWD/ohmyzsh/custom/plugins/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
ln -s $PWD/ohmyzsh/custom/themes/powerlevel10k $HOME/.oh-my-zsh/custom/themes/powerlevel10k

ln -sf $PWD/zsh/zshrc $HOME/.zshrc
ln -sf $PWD/zsh/zprofile $HOME/.zprofile
ln -sf $PWD/zsh/p10k.zsh $HOME/.p10k.zsh
