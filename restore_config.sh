#!/bin/bash
# Better to use sudo to execute the script.

# System config profile
cp profile  /etc/profile
# User bash config file
cp .bashrc ~/.bashrc
# User git config file
cp .gitconfig ~/.gitconfig
# User vim config file
cp .vimrc ~/.vimrc

