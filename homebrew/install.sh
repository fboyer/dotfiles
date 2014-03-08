#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# Make sure we have updated the formulas
brew upgrade

# Install homebrew packages
brew install grc 
brew install bazaar 
brew install boot2docker
brew install coreutils 
brew install curl
brew install dart 
brew install docker
brew install git --with-brewed-curl --with-brewed-openssl
brew install go --cross-compile-common
brew install mercurial
brew install node --enable-debug
brew install openconnect
brew install spark 
brew install wget
brew install zsh

# Install native apps
brew install phinze/cask/brew-cask
brew tap caskroom/versions

brew cask install evernote
brew cask install google-chrome
brew cask install google-drive
brew cask install kindle
brew cask install lastpass-universal
brew cask install spectacle
brew cask install the-unarchiver
brew cask install flux
brew cask install sublime-text3
# brew cask install vagrant
brew cask install virtualbox
# brew cask install vmware-fusion

exit 0
