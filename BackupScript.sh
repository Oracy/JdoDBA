# Linux commands below to schedule to run script every two days 22:30
# crontab -e
# m h  dom mon dow   command
# 30 22 */2 * * ./DatabaseBackup.sh

sudo mysqldump -u root --all-databases | gzip > "database_data_backup-"`date +"%d-%m-%Y"`".sql.gz"