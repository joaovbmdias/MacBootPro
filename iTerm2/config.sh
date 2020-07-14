if [ $(mdfind "kMDItemCFBundleIdentifier == com.googlecode.iterm2") ]; then
    echo "> Configuring iTerm2"
    ITERM2_PROFILES="$HOME/Library/Application Support/iTerm2/DynamicProfiles"
    DOTFILES="$HOME/Development/dotfiles"

    cp "$DOTFILES"/iTerm2/Profiles.json "$ITERM2_PROFILES"
    cp "$DOTFILES"/iTerm2/.zshrc $HOME/.zshrc

    # Specify the preferences directory
    defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$DOTFILES"/iTerm2
    # Tell iTerm2 to use the custom preferences in the directory
    defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
else
    echo "iTerm2 not installed"
fi