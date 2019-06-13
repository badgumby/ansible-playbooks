#!/bin/bash

# Now execute the playbook
ansible-playbook -i $1, -u $2 -k -K playbook.yml
