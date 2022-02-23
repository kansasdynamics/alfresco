#!/bin/bash
# Install the PostgreSQL database for Alfresco
sudo yum install postgresql-server postgresql-contrib
sudo postgresql-setup initdb
sudo systemctl start postgresql
sudo systemctl status postgresql
sudo systemctl enable postgresql
sudo -u postgres psql
create database alfresco encoding 'utf8';
create role alfresco LOGIN password 'alfresco';
grant all on database alfresco to alfresco;
\q
