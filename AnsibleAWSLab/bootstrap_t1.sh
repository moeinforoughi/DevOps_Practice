!/bin/bash
 sudo su
 apt-get update
 apt-get upgrade -y
 UBUNTU_CODENAME=jammy
 wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
 echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
 apt update
 apt install -y ansible
 apt install -y apt-transport-https ca-certificates curl software-properties-common
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
 add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
 apt-cache policy docker-ce
 apt install -y docker-ce
 curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 chmod +x /usr/local/bin/docker-compose
 docker --version
 docker-compose --version
 ansiblle --version
 ssh-keygen
 apt update 
 apt upgrade
 exit
