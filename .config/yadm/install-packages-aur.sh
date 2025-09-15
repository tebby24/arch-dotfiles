#!/bin/bash

# Path to the AUR package list file
AUR_PACKAGE_LIST_FILE="$HOME/.config/yadm/packages-aur.txt"

# Check if yay is installed
if ! command -v yay &> /dev/null; then
    echo "yay could not be found. Please install it first to proceed."
    exit 1
fi

echo "Installing AUR packages from $AUR_PACKAGE_LIST_FILE..."

# Check if the package list file exists
if [ ! -f "$AUR_PACKAGE_LIST_FILE" ]; then
    echo "AUR package list file not found: $AUR_PACKAGE_LIST_FILE"
    exit 1
fi

# Install packages from the list using yay
yay -S --noconfirm --needed $(cat "$AUR_PACKAGE_LIST_FILE")
