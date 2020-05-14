echo "> Configure Padbury Clock"

curl -O https://padbury.app/padbury-clock.zip

unzip padbury-clock.zip

rm padbury-clock.zip
rm -r __MACOSX

mv "Padbury Clock.saver" "/Library/Screen Savers/"

defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName "Padbury Clock" path "/Library/Screen Savers/Padbury Clock.saver" type 0