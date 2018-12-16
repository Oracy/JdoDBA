#!/bin/sh
# Linux commands below to schedule to run script every two days 22:30
# crontab -e
# m h  dom mon dow   command
# 30 22 */2 * * ./DatabaseBackup.sh
# DatabaseBackup.sh

DATA=`date +"%d-%m-%Y"`

# NOME armazena o nome do arquivo de backup, neste caso
# o diretório é /home/oracy/Backup, configure aqui o seu
# diretório de backup
NOME="/home/oracy/Backup/database_data_backup-$DATA.sql.gz"

# variáveis do MySQL
HOST="localhost"
USER="root"
PASSWORD="211192"

mysqldump -h $HOST -u $USER -p$PASSWORD --all-databases | gzip > $NOME 