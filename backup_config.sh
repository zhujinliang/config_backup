#!/bin/bash

# System config profile
cp /etc/profile ./
# User bash config file
cp ~/.bashrc ./
# User git config file
cp ~/.gitconfig ./
# User vim config file
cp ~/.vimrc ./

# hosts file
cp /etc/hosts ./
