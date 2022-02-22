#!/bin/bash
# Access ActiveMQ console
# http://<hostname>:8161/admin
# Update username and password
# /opt/activemq/conf/jetty-realm.properties

sudo yum install epel-release -y
sudo yum update -y
sudo yum install java-11-openjdk -y
echo "JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")" | sudo tee -a /etc/profile
wget https://archive.apache.org/dist/activemq/5.16.0/apache-activemq-5.16.0-bin.tar.gz
sudo tar -zxvf apache-activemq-5.16.0-bin.tar.gz -C /opt
sudo ln -s /opt/apache-activemq-5.16.0 /opt/activemq
cd /opt/activemq
sudo ./bin/activemq start
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --zone=public --permanent --add-port=8161/tcp
sudo firewall-cmd --reload
cd ~
