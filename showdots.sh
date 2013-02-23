#!/bin/sh

if [ 0 -eq `defaults read com.apple.finder AppleShowAllFiles` ]; then
 	echo 'show dot files...' 
	defaults write com.apple.finder AppleShowAllFiles -bool YES
else
 	echo 'blind dot files...' 
	defaults write com.apple.finder AppleShowAllFiles -bool NO 
fi
killall Finder