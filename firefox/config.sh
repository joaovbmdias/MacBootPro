#!/bin/bash

echo "> Configure Firefox"

FIREFOX_PROFILE="$HOME/Library/Application Support/Firefox/Profiles/"

git clone https://github.com/ghacksuserjs/ghacks-user.js setup/
rm -r -f setup/.git

for dir in "$FIREFOX_PROFILE"*; do
    cp -rv chrome "$dir"
    cp user-overrides.js "$dir"
    sh setup/updater.sh -p "$dir" -s
done

rm -r setup