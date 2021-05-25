#!/bin/bash

SOURCE=$(dirname "${BASH_SOURCE[0]}");
OLD_PWD="${PWD}"

cd $SOURCE;

git submodule update --init --recursive

./uninstall.sh

if [[ -d "$SOURCE/.tmux" ]]; then
    ln -sf $SOURCE/.tmux/.tmux.conf $HOME/.tmux.conf
    ln -sf $SOURCE/.tmux/.tmux.conf.local $HOME/.tmux.conf.local
fi

ln -sf $SOURCE/vim/vimrc $HOME/.vimrc
ln -sf $SOURCE/vim/vim_runtime $HOME/.vim_runtime

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sf $SOURCE/ohmyzsh/custom/plugins/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
ln -sf $SOURCE/ohmyzsh/custom/plugins/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
ln -sf $SOURCE/ohmyzsh/custom/themes/powerlevel10k $HOME/.oh-my-zsh/custom/themes/powerlevel10k

ln -sf $SOURCE/zsh/zshrc $HOME/.zshrc
ln -sf $SOURCE/zsh/zprofile $HOME/.zprofile
ln -sf $SOURCE/zsh/p10k.zsh $HOME/.p10k.zsh

cd $OLD_PWD;
