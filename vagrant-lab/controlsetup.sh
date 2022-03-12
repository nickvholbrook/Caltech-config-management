#!/bin/bash
apt update -y
useradd -m devops -p "password1234"

usermod -a -G sudo devops
sed -i '21 i devops  ALL=(ALL) NOPASSWD:ALL' /etc/sudoers

sudo apt update 
sudo apt install software-properties-common 
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
ansible --version

# Create and copy over public key
#ssh-keygen -t rsa -f /home/devops/.ssh/id_rsa -q -P ""  # Run as devops user
#ssh-copy-id devops@192.168.56.6