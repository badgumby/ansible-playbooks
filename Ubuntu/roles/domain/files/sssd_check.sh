#!/bin/bash

DATE=$(date +%F_%T)
status="$(systemctl status sssd --no-page)"

status_text=$(echo "${status}" | grep -i 'Backend is offline')
if [ "${status_text}" == "" ]
then
  echo "Online"
else
  echo "Offline"
  echo "${DATE} Offline" >> /scripts/log
  systemctl restart sssd
  systemctl restart sshd
fi
