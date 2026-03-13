#!/bin/bash
# iTerm2 global preferences not covered by Dynamic Profiles

defaults write com.googlecode.iterm2 DimInactiveSplitPanes -bool false
defaults write com.googlecode.iterm2 HideScrollbar -bool true
defaults write com.googlecode.iterm2 ShowFullScreenTabBar -bool false
defaults write com.googlecode.iterm2 UseBorder -bool false

# Enable key repeat instead of accented character popup (system-wide for iTerm2)
defaults write com.googlecode.iterm2 ApplePressAndHoldEnabled -bool false
defaults write com.googlecode.iterm2 AppleScrollAnimationEnabled -int 0

echo "iTerm2 global preferences applied. Restart iTerm2 to take effect."
