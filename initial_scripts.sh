#!/bin/bash

GREEN='\033[0;32m'
printf "${GREEN}'.....*********Task [1] *************.....'${GREEN}"
sleep 1
printf "${GREEN}System Update...${GREEN}"
sudo apt update -y

printf "${GREEN}'.....*********Task [2] *************.....'${GREEN}"
sleep 1
printf "${GREEN}Utilities installing (wget, curl, htop, zip, bashtop, net-tools)...${GREEN}"
sudo apt-get install xclip net-tools wget curl -y
sleep 1
printf "${GREEN}Output----Curl]${GREEN}"
curl --version
sleep 1
printf "${GREEN}Output---[Wget]${GREEN}"
wget --version | head -n 1
sleep 1
#sudo apt install net-tools -y
printf "${GREEN}Output----Net-tools]${GREEN}"
sudo netstat -tlpno
sleep 1
sleep 2
printf "${GREEN} Bashtop installing...${GREEN}"

yes '' | sudo add-apt-repository ppa:bashtop-monitor/bashtop
sleep 1
sudo apt update -y
sleep 1
yes '' | sudo apt install bashtop -y
sleep 2
bashtop



