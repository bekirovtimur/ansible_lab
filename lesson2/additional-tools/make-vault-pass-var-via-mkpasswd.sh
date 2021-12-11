#!/bin/sh
# Use this script if you have mkpasswd utility installed
pass=$(mkpasswd --method=sha-512) && echo -n $pass | ansible-vault encrypt_string --vault-password-file=vault-passfile;


