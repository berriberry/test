#!bin/bash
mkdir /nfs-shared
chmod 777 /nfs-shared
echo "/nfs-shared 10.0.0.0/14(rw,sync)" >> /etc/exports
systemctl restart nfs-sever
systemctl enable nfs-server
