#!/bin/bash

## Install apps
echo "> Checking Homebrew..."
if ! which -s brew
then
    echo "Please install Homebrew first: https://brew.sh"
    exit 1
fi

echo "> Updating Homebrew..."
brew update

echo "Creating Development Folder..."
DEV="$HOME/Development"
if test -s "$DEV"
then
    echo "Development folder already exists, skipping"
else
    mkdir $DEV
    echo "Getting Dotfiles..."
    git clone https://github.com/joaovbmdias/dotfiles $DEV
fi

echo "> Applying Brewfile..."
brew bundle

echo "> Applying configurations"
for d in *; do
    if [ -d "$d" ]; then
        sh $d/config.sh
    fi
done