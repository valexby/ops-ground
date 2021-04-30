#!/bin/bash
sudo echo "*******************************"
sudo pwd
sudo echo "*******************************"
pwd
sudo echo "*******************************"
sudo ls
sudo echo "*******************************"
sudo ls /var
sudo echo "*******************************"
sudo echo "$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
sudo pip3.8 install -r /var/ops-ground/requirements.txt
