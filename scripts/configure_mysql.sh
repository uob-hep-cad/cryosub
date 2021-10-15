#!/bin/bash
#
# Script to install mysql and create tables needed by Cryosub DAQ
#
# Assumes CentOS 7

yum install mariadb mariadb-server

sudo systemctl start mariadb

mysql -u root -e "CREATE USER 'cryosub'@'localhost' IDENTIFIED BY 'cryosub';"

mysql -u root -e "create database cryosub;"

mysql -u root -e "GRANT ALL PRIVILEGES ON cryosub.* TO 'cryosub'@'localhost';"

mysql -u cryosub -pcryosub cryosub < table_backup.sql
