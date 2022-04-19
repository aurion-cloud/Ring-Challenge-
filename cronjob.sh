#!/bin/sh 
while true
do
  sudo python3 /home/ec2-user/number_increment.py
  sudo cp /home/ec2-user/index.html /usr/share/nginx/html/index.html
  sleep 10 
done