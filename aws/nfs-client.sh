#!/bin/bash
mkdir /nfs-client
mount -t nfs 10.1.1.100:/nfs-shared /nfs-client
ec2-metadata -o | cut -d ' ' -f 2 >> /nfs-client/list.txt
umount 10.1.1.100:/nfs-shared
rmdir /nfs-client
