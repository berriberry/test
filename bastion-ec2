#!/bin/bash
sudo echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
sudo sysctl -p /etc/sysctl.conf
sudo yum install -y iptables-services
sudo systemctl start iptables.service
sudo systemctl enable iptables.service
sudo iptables -F
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo service iptables save
