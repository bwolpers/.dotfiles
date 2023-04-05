This repository contains a development environment setup, including configuration files and scripts. 

The following files and scripts are included:

#bin/linux.sh: 
A script that sets up the development environment on a Linux machine. It installs various packages, including Git, Vim, and Zsh. It also sets up the .vimrc and .bashrc files with custom configurations.

#bin/cleanup.sh: 
A script that undoes the changes made by the linux.sh script. It removes the .vimrc file, removes the custom line in .bashrc, and removes the .TRASH directory.

#Makefile: 
A Makefile with two targets: linux and clean. The linux target runs the linux.sh script, and the clean target runs the cleanup.sh script.

#.vimrc: 
A configuration file for Vim with custom settings, including syntax highlighting and line numbers.

#.bashrc:
A configuration file for Bash with custom settings, including aliases and a custom prompt.

To use this repository, clone it to your local machine and run the appropriate Makefile target for your platform. The linux target will run the linux.sh script, which will set up your development environment. The clean target will run the cleanup.sh script, which will undo the changes made by the linux.sh script.
