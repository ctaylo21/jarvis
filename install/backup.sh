#!/usr/bin/env bash
INSTALLDIR=$PWD

echo "$(tput setaf 2)JARVIS: Backup up current files.$(tput sgr 0)"

# Backup files that are provided by the Jarvis into a ~/$INSTALLDIR-backup directory
BACKUP_DIR=$INSTALLDIR/backup

set -e # Exit immediately if a command exits with a non-zero status.

echo "Creating backup directory at $BACKUP_DIR"
mkdir -p $BACKUP_DIR

files=("$HOME/.config/nvim" "$HOME/.vim" "$HOME/.vimrc")
for filename in "$HOME/.config/nvim" "$HOME/.vim" "$HOME/.vimrc"; do
    if [ ! -L $filename ]; then
        echo "backing up $filename"
        cp -rf $filename $BACKUP_DIR
    else
        echo -e "$filename does not exist at this location or is a symlink"
    fi
done

echo "$(tput setaf 2)JARVIS: Backup completed.$(tput sgr 0)"
