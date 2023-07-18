#!/usr/bin/env zsh
ZSH_DIR=$(nix-env -q --out-path oh-my-zsh | cut -d' ' -f3)/share/oh-my-zsh/

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_DIR/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_DIR/custom/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
