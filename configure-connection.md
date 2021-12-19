#Fast connect
sshpass -p vagrant ssh vagrant@192.168.56.110 -o "StrictHostKeyChecking no"
sshpass -p vagrant ssh vagrant@192.168.56.111 -o "StrictHostKeyChecking no"
sshpass -p vagrant ssh vagrant@192.168.56.112 -o "StrictHostKeyChecking no"

#For all nodes
sudo -s
useradd ansible
echo password | passwd --stdin ansible
echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible


#For control node
su - ansible
ssh-keygen
ssh-copy-id node1.example.com 
ssh-copy-id node2.example.com
ssh-copy-id control.example.com

#Ansible install
sudo yum install -y epel-release && sudo yum install -y ansible
