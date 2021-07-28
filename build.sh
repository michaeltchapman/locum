#!/bin/bash
set -x
set -e
if [ -f uservars.yml ]; then
  ANSIBLE_STRICT_HOST_KEY_CHECKING=False ansible-playbook $1.yml -e @vars/$1.yml -vvv
else
  ANSIBLE_STRICT_HOST_KEY_CHECKING=False ansible-playbook $1.yml -e @uservars.yml -e @vars/$1.yml -vvv
fi
