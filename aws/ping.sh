#!/bin/bash
cat /nfs-shared/list.txt |  while read output
do
    ping -c 1 -W 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "Instance $output is up"
    else
    echo "Instance $output is down"
    fi
done
