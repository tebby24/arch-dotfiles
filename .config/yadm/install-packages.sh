#!/bin/bash

# Path to the package list file
PACKAGE_LIST_FILE="$HOME/.config/yadm/packages.txt"

echo "Starting pacman package installation..."

# Check for root privileges
if [ "$EUID" -ne 0 ]; then
    echo "This script must be run with root privileges. Please use sudo."
    exit 1
fi

# Check if pacman is available
if ! command -v pacman &> /dev/null; then
    echo "pacman could not be found. Are you on an Arch-based distribution?"
    exit 1
fi

# Check if the package list file exists
if [ ! -f "$PACKAGE_LIST_FILE" ]; then
    echo "Package list file not found: $PACKAGE_LIST_FILE"
    exit 1
fi

# Install packages from the list
echo "Installing base packages from $PACKAGE_LIST_FILE..."
sudo pacman -S --noconfirm --needed $(cat "$PACKAGE_LIST_FILE")

echo "Package installation complete."
