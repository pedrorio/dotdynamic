#!/bin/bash

ln -sf "$(pwd)"/config/Brewfile ~/Brewfile

if ! which brew >& /dev/null;then
  echo Homebrew is not installed!
  echo Install now...
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade
brew bundle
brew cleanup
brew doctor
