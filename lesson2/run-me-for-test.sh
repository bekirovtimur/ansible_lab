#!/bin/sh
ansible-playbook ./001-create-users.yml --vault-password-file=./additional-tools/vault-passfile
