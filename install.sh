#!/usr/bin/env bash

set -e

DOTFILES_LOCATION=$(dirname -- $0)

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Symlink config files
ln -sf "${DOTFILES_LOCATION}/.zshrc" "${HOME}/.zshrc"
ln -sf "${DOTFILES_LOCATION}/.p10k.zsh" "${HOME}/.p10k.zsh"
