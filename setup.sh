#!/bin/bash

# Ensure Zsh is installed
if ! command -v zsh &>/dev/null; then
    echo "Zsh is not installed. Please install Zsh first."
    exit 1
fi

# Define plugin directory
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}
PLUGINS_DIR="$ZSH_CUSTOM/plugins"

# Install zsh-autosuggestions
if [ ! -d "$PLUGINS_DIR/zsh-autosuggestions" ]; then
    echo "Installing zsh-autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions "$PLUGINS_DIR/zsh-autosuggestions"
else
    echo "zsh-autosuggestions is already installed."
fi

# Install zsh-syntax-highlighting
if [ ! -d "$PLUGINS_DIR/zsh-syntax-highlighting" ]; then
    echo "Installing zsh-syntax-highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$PLUGINS_DIR/zsh-syntax-highlighting"
else
    echo "zsh-syntax-highlighting is already installed."
fi

# Ensure plugins are sourced in .zshrc
if ! grep -q "zsh-autosuggestions" ~/.zshrc; then
    echo "Adding zsh-autosuggestions to .zshrc..."
    sed -i '/^plugins=(/ s/)/ zsh-autosuggestions)/' ~/.zshrc
fi

if ! grep -q "zsh-syntax-highlighting" ~/.zshrc; then
    echo "Adding zsh-syntax-highlighting to .zshrc..."
    sed -i '/^plugins=(/ s/)/ zsh-syntax-highlighting)/' ~/.zshrc
fi

echo "Installation complete. Restart your terminal or run 'exec zsh' to apply changes."

