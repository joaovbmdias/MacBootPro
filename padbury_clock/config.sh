PADBURY="/Library/Screen Savers/Padbury Clock.saver"
if test -s "$PADBURY"
then
    echo "Padbury Clock already installed, skipping"
else
    echo "> Configuring Padbury Clock"

    curl -O https://padbury.app/padbury-clock.zip

    unzip padbury-clock.zip

    rm padbury-clock.zip
    rm -rf __MACOSX

    mv "Padbury Clock.saver" "/Library/Screen Savers/"

    defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName "Padbury Clock" path "/Library/Screen Savers/Padbury Clock.saver" type 0
fi