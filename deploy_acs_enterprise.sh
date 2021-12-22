#!/bin/bash
# Configuring a Docker Compose deployment of Alfresco Community Edition on a new RHEL/CentOS virtual machine.
sudo yum update -y
sudo yum install -y yum-utils lsof git
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo systemctl start docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo mkdir alfresco
cd alfresco
sudo git clone https://github.com/Alfresco/acs-deployment.git
cd $HOME'/alfresco/acs-deployment/docker-compose'
sudo cp $HOME'/alfresco/acs-deployment/docker-compose/docker-compose.yml' $HOME'/alfresco/docker-compose.yml'
cd $HOME'/alfresco/'
sudo rm -rf $HOME'/alfresco/acs-deployment'
sudo docker-compose up -d
