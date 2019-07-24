#!/bin/bash

apt-get update; apt-get upgrade -y
rm -rf /etc/stunnel/stunnel.pem
wget https://raw.githubusercontent.com/juniorfdtech/sslmanager/master/stunnel.pem -O /etc/stunnel/stunnel.pem > /dev/null 2>&1
chmod 777 /etc/stunnel/stunnel.pem
service stunnel4 restart
rm corrige-ssl.sh
cat /dev/null > ~/.bash_history && history -c && clear
exit
