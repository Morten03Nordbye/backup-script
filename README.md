# Backup Shell Script Readme

## Introduction
This is a Bash script designed to perform a backup of a user's home directory, excluding specified directories. It uses `rsync` to copy the files and directories, and `zip` to create a compressed archive of the backup. The resulting backup file is stored as a zip archive in the home directory.

## Instructions

### Running the script
Before running the script, you need to give it execute permissions. You can do this with the following command:

```Bash
chmod +x backup.sh
```

You can then run the script using this command:

```Bash
./backup.sh
```

### Excluded directories
The script will exclude certain directories from the backup. These directories are specified in the `exclude_list.txt` file. An example of contents for this file would be:

```
.local
.mozilla
.cache
.steam
.steampath
.steampid
Steam
.wine
Desktop
Downloads
.minecraft
.thunderbird
.vim
.vscode
.config/Slack
.config/microsoft-edge-beta
.config/VirtualBox
.config/Code
.config/BraveSoftware
.config/cef_user_data
.config/cherrytree
.config/StardewValley
.pki
```

The `exclude_list.txt` file should be located at `/home/backup-script/exclude_list.txt`.

### Troubleshooting

- Ensure that the path to the exclude list in the script matches the actual location of your `exclude_list.txt` file.

- If you encounter problems, it might be helpful to remove the old backup folder with the command `rm -r /home/backup` before running the script again.

Please note that this script should be run with the necessary permissions, and make sure to test the script in a safe environment before using it on important data.
