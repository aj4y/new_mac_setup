#!/bin/bash

# Check if hombrew is installed, if not then install
if ! command -v brew &>/dev/null; then
    echo "Homebrew not found, installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed"
fi

touch ~/.zshrc 
echo "export PATH=$PATH:/opt/homebrew/bin" >> ~/.zshrc
echo "\nalias ll='ls -la'" >> ~/.zshrc
echo "\nalias cls='clear'" >> ~/.zshrc

# Update and upgrade Homebrew
brew update
brew upgrade
brew cleanup

Install development tools
brew install python
brew install r
brew install zsh
brew install htop
brew install youtube-dl
brew install yt-dpl
brew install fzf
brew install rmlint
brew install ncdu


# Install essential software
brew install --cask google-chrome
brew install --cask slack
brew install --cask dropbox
brew install --cask kindle
brew install --cask iterm2
brew install --cask zoom
brew install --cask rstudio
brew install --cask visual-studio-code
brew install --cask homebrew/cask-fonts/font-fira-code



# Set macOS defaults

xcode-select --install

echo "Complete the installation of Xcode Command Line Tools before proceeding."
echo "Press enter to continue..."
read

echo "Setting macOS defaults..."

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles -bool true

# Set default finder location to home directory 
defaults write com.apple.finder NewWindowTarget -string "PfHm"

# Enable tap to click on trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Show battery percentage in the menu bar
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Enable dark mode 
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Setup display sleep time in minutes 
sudo systemsetup -setdisplaysleep 10    

# Kill Finder to apply settings
killall Finder

# Clean up
brew cleanup

#Install R packages 
Rscript install_packages.R

#Install python packages 
python install_python_packages.py

echo "Setup complete!"
