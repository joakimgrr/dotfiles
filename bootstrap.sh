#!/bin/bash

osxfiles=".zshrc"
ubuntufiles=""
sharedfiles=".vimrc"

osxdir=~/dotfiles/osx
ubuntudir=~/dotfiles/ubuntu
shareddir=~/dotfiles/shared
backupdir=~/dotfiles_backup

if [ "$#" -ne 1 ]; then
  echo "Please provide target system: osx or ubuntu"
  exit 1
fi

echo "Setting up dotfiles for: $1"
echo "-----------------------------------"

if [ ! -d "$backupdir" ]; then
  echo "Backup directory does not exist, creating $backupdir"
  mkdir $backupdir
fi

echo "Creating symlinks for shared dotfiles"

for file in $sharedfiles; do
  echo "Processing: $file"
 
  if [ -f ~/$file ]; then
    echo "File $file exists, creating a backup."
    cp ~/$file $backupdir/backup"$file"  
    rm ~/$file
  fi

  ln -s $shareddir/$file ~/$file 
done

echo "Succefully created shared dotfiles symlinks"

if [ "$1" == "osx" ]; then
  echo "Creating symlinks for OSX"
  
  for file in $osxfiles; do
    echo "Processing: $file"

    if [ -f ~/$file ]; then
      echo "File $file exists, creating a backup."
      cp ~/$file $backupdir/backup"$file"  
      rm ~/$file
    fi

    ln -s $osxdir/$file ~/$file 
  done
fi
