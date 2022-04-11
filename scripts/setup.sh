#!/bin/bash 
set -e

###################################################################
# Script Name: setup.sh                                                                                              
# Project:     Packer-VM                                                                            
# Author:    	 Brette Geary                                                
# GitHub:      https://github.com/hackedbyagirl
#
# Description: This script installs the neccessary dependencies,
#              adds the terraform user to the sudo group, 
#              installs SSH key(s), and downloads required
#              packages.
#
# Updated:     25 Jan 2022
###################################################################


###################################################################
#                            Variables
###################################################################

# Output Colors
#RED="\033[01;31m"      # Issues/Errors
#GREEN="\033[01;32m"    # Success
#YELLOW="\033[01;33m"   # Warnings/Information
#BLUE="\033[01;34m"     # Heading
#BOLD="\033[01;01m"     # Highlight
#RESET="\033[00m"       # Normal

# General
ROOT_UID=0


###################################################################
#                          Main Program
###################################################################


# Fix Kali Repository Sources 
sudo tee -a /etc/apt/sources.list<<EOF
deb http://http.kali.org/kali kali-rolling main non-free contrib
deb-src http://http.kali.org/kali kali-rolling main non-free contrib
EOF
sudo cp /etc/apt/sources.list /etc/apt/sources-list.bak
sudo apt-get -qq update

# Install Necessary dependencies
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
sudo apt-get -y --force-yes install curl wget git zsh vim apt-transport-https ca-certificates
sudo apt-get -qq update

# Setup sudo to allow no-password for "provision" group and add "terraform user"
#sudo groupadd -r fortalice
#sudo useradd -m -s /bin/bash fortalice
#sudo usermod -a -G fortalice fortalice
#sudo cp /etc/sudoers /etc/sudoers.orig
#echo "fortalice ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/fortalice
#
## Install SSH key 
#sudo mkdir -p /home/fortalice/.ssh
#sudo chmod 700 /home/fortalice/.ssh
#sudo chown -R fortalice /home/fortalice/.ssh
#sudo usermod --shell /bin/bash fortalice


