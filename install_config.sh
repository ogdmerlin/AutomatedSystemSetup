#!/bin/bash

# Get the list of software packages to install.
software_packages=(
  "vim"
  "git"
  "wget"
  "curl"
  "tmux"
  "zsh"
  "nodejs"
  "npm"
  "python3"
  "pip3"
)

# Install the software packages.
for package in "${software_packages[@]}"; do
  sudo apt install "$package"
done

# Configure the system.

# Set the default shell to zsh.
chsh -s zsh

# Install the oh-my-zsh shell framework.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set the default editor to vim.
sudo update-alternatives --set editor /usr/bin/vim.basic

# Install Node.js and NPM.
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install nodejs
npm install -g npm

# Install Python 3 and Pip.
sudo apt install python3-pip
pip3 install --upgrade pip

# Create a configuration file for the tmux terminal multiplexer.
cat << EOF > ~/.tmux.conf
set -g default-terminal "screen-256color"
EOF

# Start tmux.
tmux

# Install a few useful packages.
sudo apt install htop neofetch ranger
