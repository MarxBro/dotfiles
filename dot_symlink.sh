#!/bin/bash

########################################################################################################
# Script : dot_symlink.sh
# Object : This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Author : Jean-Sebastien Beaulieu
########################################################################################################

#################################################
# Variables
#################################################
dir=~/dotfiles 															# dotfiles directory
olddir=~/dotfiles/old 													# Backup directory
files="bashrc bash_profile i3 xinitrc Xresources nanorc i3status.conf" 	# List of files or directories to symlink

#################################################
# Creating folders
#################################################
echo "Creating $olddir for backup purposes ..."
mkdir -p $olddir
echo "OK!"

echo "Moving to $dir ..."
cd $dir
echo "OK!"

#################################################
# Move existing dotfiles, and create symlinks
#################################################
for file in $files; do
    echo "Creating backups from ~ to $olddir"
    mv ~/.$file ~/dotfiles/old
    echo "Creating symlink to $file ..."
    ln -s $dir/$file ~/.$file
done
echo "Dotfiles restored!"