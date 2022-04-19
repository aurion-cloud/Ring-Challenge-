
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
done 