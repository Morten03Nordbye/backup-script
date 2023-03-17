#!/bin/bash
#------------
# Copy part
#------------
mkdir -p /home/backup
chown mnordbye:mnordbye /home/backup
chmod 700 /home/backup

# Set the source and destination directories
copysrc="/home/mnordbye"
copydst="/home/backup"

# Read the exclude list from a file
exclude_list_file="/home/backup-script/exclude_list.txt"
exclude_options=()
while IFS= read -r pattern
do
  exclude_options+=(--exclude="$pattern")
done < "$exclude_list_file"

# Copy all files and directories, excluding temporary files and directories
rsync -av --info=progress2 "${exclude_options[@]}" "$copysrc/" "$copydst"

#------------
# Zip part
#------------
# Set the folder to zip
zipsrc="/home/backup/"
# Set the destination for the zip file
zipdst="/home/backup_$(date +%F).zip"

# Create a zip archive of the source directory and store it in the destination
zip -r "$zipdst" "$zipsrc"

# Change the owner of the zipped file to the user being backed up
chown mnordbye:mnordbye "$zipdst"

# Remove the backup directory
rm -r "$copydst"
