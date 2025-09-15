#!/bin/sh

# input configuration with ibus
gsettings set org.freedesktop.ibus.general.hotkey triggers "['<Control><Shift>i']"

# Create and populate /etc/environment with ibus configuration
sudo tee /etc/environment > /dev/null << 'EOF'
GTK_IM_MODULE=ibus
QT_IM_MODULE=ibus
XMODIFIERS=@im=ibus
EOF

# Start the systemd service for keyd
sudo systemctl enable --now keyd

# Create the /etc/keyd/default.conf file
sudo mkdir -p /etc/keyd/
sudo tee /etc/keyd/default.conf > /dev/null << 'EOF'
[ids]

*

[main]

# Maps capslock eo escape when pressed and control when held.
capslock = overload(control, esc)

# Remaps escape key to capslock
esc = capslock
EOF
