#!/bin/bash

# echo "*** Firewall - disable ..."
# sudo systemctl stop firewalld
# sudo systemctl disable --now firewalld
# OR
echo "*** Firewall - open needed ports ..."
sudo firewall-cmd --permanent --add-port=3000/tcp
sudo firewall-cmd --permanent --add-port=8081/tcp
sudo firewall-cmd --permanent --add-port 8082/tcp
sudo firewall-cmd --permanent --add-port 9090/tcp
sudo firewall-cmd --permanent --add-port 9100/tcp
sudo firewall-cmd --permanent --add-port 9093/tcp
sudo firewall-cmd --permanent --add-port 9323/tcp
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
