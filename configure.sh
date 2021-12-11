#
# SCRIPT IN PROGRESS
# DO NOT USE IT!
#


#!/usr/bin/expect -f

set timeout 10
set user "vagrant"
set password "vagrant"

spawn sshpass -p $password ssh $user@192.168.56.110 -o "StrictHostKeyChecking no"
expect {
    "?control ~]$*" {
        send "sudo useradd ansible\n"
        interact
    }
    "?control ~]$*" {
        send "sudo echo password | sudo passwd --stdin ansible\n"
        interact
    }
    "?control ~]$*" {
        send "sudo echo \"ansible ALL=(ALL) NOPASSWD:ALL\" > /etc/sudoers.d/ansible"
        interact

    }

#    ">*" {
#        send "en\n"
#        send "$en_password\n"
#        interact
#        exit 0;
#
#    }
#
#    "#*" {
#        send "en\n"
#        send "$en_password\n"
#        interact
#        exit 0;
#
#    }
#    
# 
#
}
exit 11

