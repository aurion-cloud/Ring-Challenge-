
# sudo python3 /home/ec2-user/number.py
# sudo cp /home/ec2-user/index.html /usr/share/nginx/html/index.html

# # for i in {1..10}; do echo -n "This is a test in loop $i "; date ; sleep 5; done
# # while true; do echo -n "This is a test of while loop";date ; sleep 5; done
# while true; 
# do 
#     echo -n "This is a test of while loop"; sleep 10; 
# done


#!/bin/sh


while true
do
  sudo python3 /home/ec2-user/number.py
  sudo cp /home/ec2-user/index.html /usr/share/nginx/html/index.html
  #scp -i ~/.ssh/aws_keypair.pem /home/ec2-user/index.html ec2-user@:54.167.48.13 ~/
  sleep 10


#!/bin/sh
IPS='54.146.163.250 3.22.186.56 54.242.145.132 3.92.25.77'
if [[ ! -f ${IP_FILE} ]]; then
  echo "No File!"
  exit 1
fi
for IP_ADDRESS in ${IPS}; do
  echo "TEST FOR ${IP_ADDRESS}"
  # The -c 1 means send one packet, and the -t 1 means a 1 second timeout    
  ping -c 1 -t 10 ${IP_ADDRESS} >> ${IP_ADDRESS}.log 2>&1 
  sleep 10
done