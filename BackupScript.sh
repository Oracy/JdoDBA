#!/bin/bash
### MySQL Server Login Info ###
MUSER="root"
MPASS="123456"
MHOST="localhost"
MYSQL="$(Apostas)"
MYSQLDUMP="$(Apostas)"
BAK="/home/backup/mysql"
GZIP="$(Apostas)"

### FTP SERVER Login info ###
FTPU="FTP-SERVER-USER-NAME"
FTPP="FTP-SERVER-PASSWORD"
FTPS="FTP-SERVER-IP-ADDRESS"
NOW=$(date +"%d-%m-%Y")
 
### See comments below ###
### [ ! -d $BAK ] && mkdir -p $BAK || /bin/rm -f $BAK/* ###
[ ! -d "$BAK" ] && mkdir -p "$BAK"
 
DBS="$($MYSQL -u $MUSER -h $MHOST -p$MPASS -Bse 'show databases;')"
for db in $DBS
do
 FILE=$BAK/$db.$NOW-$(date +"%T").gz
 $MYSQLDUMP -u $MUSER -h $MHOST -p$MPASS $db | $GZIP -9 > $FILE
done
 
lftp -u $FTPU,$FTPP -e "mkdir /mysql/$NOW;cd /mysql/$NOW; mput /home/backup/mysql/*; quit" $FTPS



# sudo apt-get install lftp

# sudo crontab -e
   # @midnight /home/you/mysql.backup.sh >/dev/null 2>&1

# https://www.jotform.com/blog/how-to-backup-mysql-database/