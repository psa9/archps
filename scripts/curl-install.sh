#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in ArchPSA Folder."
    echo "Please use ./ArchPSA.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the ArchPSA Project"
git clone https://github.com/christitustech/ArchPSA

echo "Executing ArchPSA Script"

cd $HOME/ArchPSA

exec ./ArchPSA.sh
