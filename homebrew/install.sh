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

# Install homebrew packages
brew install grc bazaar boot2docker coreutils curl dart docker git --with-brewed-curl --with-brewed-openssl go --cross-compile-common mercurial node --enable-debug spark wget zsh

# Install native apps
brew install phinze/cask/brew-cask
brew tap caskroom/versions

brew cask install evernote google-chrome google-drive kindle lastpass-universal spectacle the-unarchiver flux sublime-text3 vagrant virtualbox vmware-fusion

exit 0
