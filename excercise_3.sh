0 21 * * 0 tar -czf /home/user/backups/$(date +\%Y\%m\%d)_backup.tar.gz /home/user && scp /home/user/backups/*.tar.gz user@192.168.1.100:/backup/folder
