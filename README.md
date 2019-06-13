# Ansible-Playbooks

These can be modified to fit your need to do base deploys of CentOS and Ubuntu.

Once the `vars\vars.yml` file is configured, these will perform initial updates and software installs, join the domain, configure SNMP, and join to a Spacewalk server (CentOS).

To run either playbook, clone the repo to your local machine, `cd` into the OS directory, then execute the `run_playbook.sh` shell script followed by IP/Hostname and user name.

`./run_playbook.sh somehost.domain.com badgumby`

You will be prompted for the intial SSH password, then the sudo password (known in ansible as the `become` password).
