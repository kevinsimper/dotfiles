#!/bin/bash
# macOS preferences for new machine setup

# Menu bar: show Sound and Bluetooth
defaults -currentHost write com.apple.controlcenter Sound -int 18
defaults -currentHost write com.apple.controlcenter Bluetooth -int 18

echo "macOS preferences applied. Log out and back in to take effect."
