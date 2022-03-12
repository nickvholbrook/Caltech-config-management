#!/bin/bash
apt update -y
useradd -m devops -p "p@ssw0rd1234"
ssh-keygen -t rsa -f /home/devops/.ssh/id_rsa -q -P ""
usermod -a -G sudo devops
#sudo sh -c "echo \"group ALL=(user) NOPASSWD: ALL\" >> /etc/sudoers"
sed -i '21 i devops  ALL=(ALL) NOPASSWD:ALL' /etc/sudoers
ssh-copy-id devops@192.168.56.6