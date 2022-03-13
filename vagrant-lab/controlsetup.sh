#!/bin/bash


adduser -m devops -p "password1234"
usermod -a -G sudo devops
sed -i '21 i devops  ALL=(ALL) NOPASSWD:ALL' /etc/sudoers

sudo apt update -y
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible -y
sudo apt install ansible -y
ansible --version

sudo vi /etc/ssh/sshd_config 
PasswordAuthentication yes 

# Run on web and DB.  Create and copy over public key
useradd -m devops -p "password1234"
usermod -a -G sudo devops
sed -i '21 i devops  ALL=(ALL) NOPASSWD:ALL' /etc/sudoers

# Run from control host
ssh-keygen   # Run as devops user
ssh-copy-id devops@192.168.56.6
