# Backup
Copying files
```Bash
rsync -av --info=progress2 /home/mnordbye/ /home/backup
```
Now i need to zip the folder
```Bash
zip -r backup_$(date +%F).zip /home/backup/
```
