#!/bin/bash

sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

install aptitude

install git
install git-extras
install git-lfs

install gnupg
install openvpn
# install openssh

#install anyenv

#install r

install cmake

install ffmpeg
install imagemagick

#install mysql
install postgresql
#install neo4j

install tmux
install grep
install htop
install tree
install wget
install whois
install speedtest-cli

install software-properties-common
install zsh
#install gcloud
install curl
install file
install nmap

install micro

install xclip
install jq

# install docker-ce
# install docker-ce-cli
# install containerd.io

#install pidgin
#install gimp

#install opencv
#install opennlp

install snapd

sudo apt upgrade -y
