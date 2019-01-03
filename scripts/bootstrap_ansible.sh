#!/bin/bash

echo "Installing Ansible..."
apt install -y software-properties-common
apt-add-repository ppa:ansible/ansible
apt update
apt install -y --force-yes ansible

cp -p /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg
cp -p /vagrant/ansible/hosts /etc/ansible/hosts

