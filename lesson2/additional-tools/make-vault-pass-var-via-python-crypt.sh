#!/bin/sh
# Use this script if you prefer python3, or don't have installed mkpasswd utility
pass="$(python3 -c 'import crypt; import getpass; print(crypt.crypt(getpass.getpass(), crypt.METHOD_SHA512))')" && echo -n $pass | ansible-vault encrypt_string --vault-password-file=vault-passfile
