#!/bin/bash
#------------
# Copy part
#------------
mkdir -p /home/backup
# Set the source and destination directories
copysrc="/home/mnordbye"
copydst="/home/backup"
# Exclude temporary files and directories
exclude="--exclude=".local" --exclude=".mozilla" --exclude=".cache""
# Copy all files and directories, excluding temporary files and directories
rsync -av --info=progress2 $exclude "$copysrc" "$copydst"
#------------
# Zip part
#------------
# Set the folder to zip
zipsrc="/home/mnordbye/"
# Set the destination for the zip file
zipdst="/home/backup_$(date +%F).zip"
# Create a zip archive of the source directory and store it in the destination
zip -r "$zipdst" "$zipsrc"
