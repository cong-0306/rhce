#!/bin/bash

BASEDIR=/home/ansible/ansible/05_epel
cd $BASEDIR

# 1) 없으면 ansible.cfg 파일 생성
cat << EOF > ansible.cfg
[defaults]
inventory = ./allhost
[privilege_escalation]
become= = true
EOF

# 1) inventory 파일 생성
cat << EOF > allhosts
ansible1
ansible2
ansible3
ansible4
EOF

# 2) 플레이북 실행
ansible-playbook epel.yml