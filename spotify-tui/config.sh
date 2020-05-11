echo "> Configure spotify-tui"

SPOTIFY_TUI="$HOME/.config/spotify-tui/client.yml"

if test -s "$SPOTIFY_TUI"
then
    echo "Spotify Tui settings file already exists, skipping"
else
    cp spotify-tui/client.yml "$SPOTIFY_TUI"
fi
