#!/bin/bash

# Set the source and destination directories
src="/home/mnordbye"
dst="/home/backup"

# Exclude temporary files and directories
exclude="--exclude=*.tmp --exclude=*.temp --exclude=tmp --exclude=temp"

# Copy all files and directories, excluding temporary files and directories
rsync -av --info=progress2 $exclude "$src" "$dst"
