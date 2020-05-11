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

echo "> Install Mac App Store CLI..."
brew install mas

echo "> Applying Brewfile..."
brew bundle

echo "> Applying configurations"
for d in *; do
    if [ -d "$d" ]; then
        sh $d/config.sh
    fi
done