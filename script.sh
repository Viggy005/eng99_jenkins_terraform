#!/bin/bash
echo -e "[webservers]\n$(terraform output app_ip) ansible_user=ubuntu" | sed 's/"//g' > ../ansible/dev.inv 
echo -e "[db]\n$(terraform output db_ip) ansible_user=ubuntu" | sed 's/"//g' >> ../ansible/dev.inv
