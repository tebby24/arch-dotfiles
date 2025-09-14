#!/bin/bash

# Path to the package list file
PACKAGE_LIST_FILE="$HOME/.config/yadm/packages.txt"

echo "Installing base packages from $PACKAGE_LIST_FILE..."
sudo pacman -S --noconfirm --needed $(cat "$PACKAGE_LIST_FILE")
