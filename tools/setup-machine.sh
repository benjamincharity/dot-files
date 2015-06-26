#
# Basic computer setup
#
echo "Setup computer name"
sudo scutil --set ComputerName "bc-air"
sudo scutil --set HostName "bc-air"
sudo scutil --set LocalHostName "bc-air"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "bc-air"

echo "Disable the 'Are you sure you want to open this application?' dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "Show percentage in battery status"
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

echo "Show Path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

echo "Show Status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Show Hidden Files"
defaults write com.apple.finder AppleShowAllFiles YES

echo "Disable dashboard"
defaults write com.apple.dashboard mcx-disabled -boolean YES

echo "Move dock to right side of screen"
defaults write com.apple.dock orientation -string right

echo "Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

echo "Remove 'Burn Items to Disc...' from the right-click context menu in Finder"
defaults write com.apple.finder ProhibitBurn -boolean true

echo "Set a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 0.02

echo "Set a shorter Delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 12

echo "Expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Require password after a minute after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 60

echo "Use list view in all Finder windows by default"
echo "Four-letter codes for the other view modes: icnv, Nlmv, Flwv"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlmv"

echo "Disable sound effect when changing volume"
defaults write -g com.apple.sound.beep.feedback -integer 0

echo "Enable tap to click (Trackpad)"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Disable automatic rearrangement of spaces based on most recent usage"
defaults write com.apple.dock mru-spaces -bool false

echo "Kill affected applications, so the changes apply"
for app in Safari Finder Dock Mail SystemUIServer; do killall "$app" >/dev/null 2>&1; done

