## Set macOS defaults
echo "> Adjusting macOS defaults..."
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true  # Expand save panel by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true  # Finder: show all filename extensions
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false  # Don't complain when changing file extensions

echo "> Setting Dark mode..."
defaults write "Apple Global Domain" AppleInterfaceStyle Dark

echo "> Configure Menu bar..."
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM  HH:mm:ss"
defaults write com.apple.menuextra.battery ShowPercent YES
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Volume.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

echo "> Configure Dock..."
defaults write com.apple.dock autohide -bool false
defaults write com.apple.dock show-recents -int 0
defaults write com.apple.dock autohide -int 0
defaults write com.apple.dock tilesize -int 48

echo "> Configure Keyboard..."
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false  # Disable automatic quotes
defaults write -g ApplePressAndHoldEnabled -bool false  # Disable Character picker
defaults write -g InitialKeyRepeat -int 25  # Repeat rate, minimum in UI
defaults write -g KeyRepeat -int 2  # Repeat rate, minumum in UI

echo "> Enable trackpad tap to click..."
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "> Configure Hot Corners..."
# Top left screen corner - Application windows
defaults write com.apple.dock wvous-tl-corner -int 3
defaults write com.apple.dock wvous-tl-modifier -int 0
# Bottom left screen corner - put display to sleep
defaults write com.apple.dock wvous-bl-corner -int 10
defaults write com.apple.dock wvous-bl-modifier -int 0
# Top right screen corner - Mission Control
defaults write com.apple.dock wvous-tr-corner -int 2
defaults write com.apple.dock wvous-tr-modifier -int 0
# bottom right screen corner - show Desktop
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0

echo "> Configure Calendar..."
defaults write com.apple.iCal "first day of week" -int 1


## Configure apps
echo "> Configure Clipy"
defaults write com.clipy-app.Clipy kCPYPrefShowIconInTheMenuKey -int 0
defaults write com.clipy-app.Clipy menuItemsAreMarkedWithNumbers -int 0
defaults write com.clipy-app.Clipy kCPYPrefNumberOfItemsPlaceInlineKey -int 20
defaults write com.clipy-app.Clipy kCPYPrefNumberOfItemsPlaceInsideFolderKey -int 20
defaults write com.clipy-app.Clipy loginItem -int 1
