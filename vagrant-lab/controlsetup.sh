#!/bin/bash
useradd -m devops -p P@ssw0rd1234
ssh-keygen -t rsa -f /home/devops/.ssh/id_rsa -q -P ""
usermod -a -G sudo devops
sudo sh -c "echo \"group ALL=(user) NOPASSWD: ALL\" >> /etc/sudoers"
