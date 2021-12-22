# Alfresco Digital Business Platform
https://www.alfresco.com/

## Deploying **ACS Community** in RHEL/CentOS with Docker Compose  

Make the script executable  
`sudo chmod +x deploy_acs_community.sh`  

Run the script  
`. ./deploy_acs_community.sh`  

Access the application  
[http://<ip_address>:8080/share]()  
  

## Deploying **ACS Enterprise** in RHEL/CentOS with Docker Compose  
*You must have valid Quay.io account credentials provided by Alfresco for the Enterprise edition*  

Login to quay.io using your credentials provided by Alfresco  
`sudo docker login quay.io`  

Make the script executable  
`sudo chmod +x deploy_acs_enterprise.sh`  

Run the script  
`. ./deploy_acs_enterprise.sh`  

Access the application  
[http://<ip_address>:8080/share]()
