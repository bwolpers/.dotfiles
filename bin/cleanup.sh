#!/bin/bash

# This script removes any changes made by the linux.sh script

# Remove .vimrc file in home directory
if [[ -f ~/.vimrc ]]; then
	rm ~/.vimrc
	echo "Removed .vimrc file in home directory."
fi

# Remove the line 'source ~/.dotfiles/etc/bashrc custom' from .bashrc file in home directory
if grep -q "source ~/.dotfiles/etc/bashrc custom" ~/.bashrc; then
	sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc
	echo "Removed statement from .bashrc file."
fi

# Remove .TRASH directory in home directory

if [[ -d ~/.TRASH ]]; then
	rm -r ~/.TRASH
	echo "Removed .TRASH directory in home directory."
fi

