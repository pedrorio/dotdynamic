#!/bin/bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install $1
  else
    echo "Already installed: ${1}"
  fi
}

install pycharm-professional --classic
install clion --classic
install webstorm --classic
install datagrip --classic

install chromium
install slack --classic
install notion-snap