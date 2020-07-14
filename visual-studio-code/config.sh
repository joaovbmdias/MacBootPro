VSCODE_SETTINGS="$HOME/Library/Application Support/Code/User/settings.json"
if test -s "$VSCODE_SETTINGS"
then
    echo "VS Code settings file already exists, skipping"
else
    echo "> Configuring VS Code"
    code --install-extension Shan.code-settings-sync
    cat <<EOF > "$VSCODE_SETTINGS"
    {
        "sync.removeExtensions": false,
        "sync.gist": "Sync: 2f629b086d3adc91cf83fac04775e40d",
    }
EOF
fi
