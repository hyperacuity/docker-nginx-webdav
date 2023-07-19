#!/bin/sh

if [ -e /etc/nginx/htpasswd ]; 
then
  exit 0;
fi

if [ -n "$USERNAME" ]
then
  htpasswd -bc /etc/nginx/htpasswd $USERNAME $PASSWORD 
  echo "success: added new user"
  exit 0
fi

echo "error: invalid configuration"
exit 1
