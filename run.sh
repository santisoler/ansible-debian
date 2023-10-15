#!/bin/bash

# Install ansible
if ! which ansible-playbook &> /dev/null
then
    sudo apt update
    sudo apt install ansible
fi

# Execute playbook
ansible-playbook -v --ask-become-pass playbook.yml
