if which -s yabai
then
    echo "> Configuring Yabai"
    DOTFILES="$HOME/Development/dotfiles"

    # install the scripting addition
    sudo yabai --install-sa

    cp "$DOTFILES"/Yabai/.yabairc $HOME/.yabairc

    # start yabai
    brew services start yabai

    # load the scripting addition
    killall Dock
else
    echo "Yabai not installed"
fi