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

#
# Apps/Scripts
#
#echo "Installing Homebrew..."
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Set directory for cask installs
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

echo "Brewing common apps..."
brew install ack autojump automake curl git git-flow imagemagick libmemcached memcached openssl tmux wget node
echo "Finished installing: ack autojump automake curl git git-flow imagemagick libmemcached memcached openssl tmux wget node"

echo "Setting up Shell"
echo "Cloning Oh My Zsh..."
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Cloning dot-files..."
git clone git@github.com:benjamincharity/dot-files.git ~/.dot-files

echo "Creating links..."
echo ".zshrc"
ln -s ~/.dot-files/zshrc ~/.zshrc

echo ".vim"
[[ -L ~/.vim ]] || ln -s ~/.dot-files/vim ~/.vim

echo ".vimrc"
ln -s ~/.dot-files/vim/vimrc ~/.vimrc

echo ".gvimrc"
ln -s ~/.dot-files/vim/gvimrc ~/.gvimrc

echo ".gitconfig"
ln -s ~/.dot-files/gitconfig ~/.gitconfig

echo "Setting up vim/vundler..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# Auto install isn't working currently...
#vim +PluginInstall +qall

echo "Changing Shells..."
chsh -s /bin/zsh

echo "\n\n Setup is complete"
zsh
source ~/.zshrc

echo "\n\n You may need to restart your terminal for changes to take effect."

echo "Creating 'code' directory..."
mkdir ~/code

echo "Cloning repos..."
git clone git@github.com:benjamincharity/blog.benjamincharity.com.git ~/code/blog.benjamincharity.com
git clone git@github.comm:benjamincharity/ArborWoodProducts.git ~/code/ArborWoodProducts

echo "Creating 'open-source' directory..."
mkdir ~/code/open-source

echo "Cloning repos open source repos..."
git clone git@github.com:benjamincharity/project-boilerplate.git ~/code/open-source/project-boilerplate
git clone git@github.com:benjamincharity/CSS-Guidelines.git ~/code/open-source/CSS-Guidelines
git clone git@github.com:benjamincharity/resets.git ~/code/open-source/resets
git clone git@github.com:benjamincharity/stylish-themes.git ~/code/open-source/stylish-themes
git clone git@github.com:benjamincharity/book.git ~/code/open-source/book
git clone git@github.com:benjamincharity/faviconfinder.com.git ~/code/open-source/faviconfinder.com
git clone git@github.com:benjamincharity/iePayback.git ~/code/open-source/iePayback

echo "Cloning MacVim..."
git clone git://github.com/b4winckler/macvim.git ~/code/open-source/macvim

echo "Installing Applications..."

echo "Brew Cask:"
brew install brew-cask

echo "iTerm2:"
brew cask install iterm2

echo "Alfred:"
brew cask install alfred

echo "Bartender:"
brew cask install bartender

echo "Sonos:"
brew cask install sonos

echo "Transmit:"
brew cask install transmit

echo "Sublime:"
brew cask install sublime-text

echo "MacVim:"
brew cask install macvim

echo "Firefox:"
brew cask install firefox

echo "Spotify:"
brew cask install spotify

echo "Pixelapse:"
brew cask install pixelapse

echo "VLC:"
brew cask install vlc
echo "Caffine:"
brew cask install caffine
echo "JumpCut:"
brew cask install jumpcut
echo "Chrome:"
brew cask install google-chrome
echo "Github:"
brew cask install github
echo "Creative Cloud:"
brew cask install adobe-creative-cloud
echo "1Password:"
brew cask install 1password
echo "CloudApp:"
brew cask install cloud
echo "TotalSpace:"
brew cask install totalspaces
echo "SkyFonts:"
brew cask install monotype-skyfonts
echo "Karabiner:"
brew cask install karabiner
echo "Seil:"
brew cask install seil
echo "BetterTouchTool:"
brew cask install bettertouchtool
echo "Sketch:"
brew cask install sketch
echo "Sketch Toolbox:"
brew cask install sketch-toolbox
echo "xScope:"
brew cask install xscope
echo "Slack:"
brew cask install slack
echo "MongoHub:"
brew cask install jeromelebel-mongohub
echo "Charles:"
brew cask install charles
echo "Visual Studio Code:"
brew cask install visual-studio-code
echo "ImageOptim:"
brew cask install imageoptim
echo "Marked:"
brew cask install marked
echo "Plex Media Server:"
brew cask install plex-media-server
echo "Plex Home Theater:"
brew cask install plex-home-theater
echo "Noizio:"
brew cask install noizio
echo "Plug:"
brew cask install plug
echo "Amazon Music:"
brew cask install amazon-music
echo "Amazon Cloud Drive:"
brew cask install amazon-cloud-drive
echo "LimeChat:"
brew cask install limechat
echo "Transmission:"
brew cask install transmission
echo "Carbon Copy Cloner:"
brew cask install carbon-copy-cloner
echo "The Unarchiver:"
brew cask install the-unarchiver
echo "Dropbox:"
brew cask install dropbox
echo "ngrok:"
brew cask install ngrok

echo "That's it! We are all set to go!"
