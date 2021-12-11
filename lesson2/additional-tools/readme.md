Passwords used for this playbook:

-----------------------------
| username    | password    |
-----------------------------
| alice       | alicepass   |
| bob         | bobpass     |
| carol       | carolpass   |
-----------------------------

To create password vars in vars/users file, used this algorithm:
1. Plain text password crypted using SHA512 method
2. Resulting hash crypted via ansible-vault tool using vault password provided in vault-passfile

To automate this process been made two scripts:
1. make-vault-pass-var-via-mkpasswd.sh
2. make-vault-pass-var-via-python-crypt.sh

Using second script preferred, because it uses python3, and works everywhere, where ansible installed.
Execute script and enter any password, that you need to crypt in ansible-vault format.

To run playbook use provided command from project's root folder:
ansible-playbook ./001-create-users.yml --vault-password-file=./additional-tools/vault-passfile

Or just execute run-me-for-test.sh script.

