#!/bin/bash


# Append all output from echo statements to linuxsetup.log
exec &>> linuxsetup.log

# Check the operating system type is 'Linux'
if [[ $(uname) != "Linux" ]]; then
	echo "Error: This script is intended to run on Linux." >&2
	exit 1
fi

# Create .TRASH directory if it doesn't exist already
if [[ ! -d ~/.TRASH ]]; then
	mkdir ~/.TRASH
	echo "Created .TRASH directory in the home directory." 
fi

# Check if .vimrc file exists and change its name if it does
if [[ -f ~/.vimrc ]]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "Changed .vimrc file to .bup_vimrc." 
fi

# Redirect etc/vimrc to .vimrc in home directory
sudo cat /etc/vimrc > ~/.vimrc
echo "Redirected /etc/vimrc to ~/.vimrc." 

# Add statement to .bashrc file in home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
echo "Added statement to ~/.bashrc file." 

