#!/bin/bash

# Set the source and destination directories
src="/home/mnordbye"
dst="/home/backup"

# Exclude temporary files and directories
exclude="--exclude=~/.local --exclude=~/.mozilla"

# Copy all files and directories, excluding temporary files and directories
rsync -av --info=progress2 $exclude "$src" "$dst"
