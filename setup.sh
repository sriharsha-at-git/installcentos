whoami
ip addr
uptime
yum install -y epel-release
yum install -y docker wget curl git ansible
yum install -y python-cryptography pyOpenSSL.x86_64
ansible --version
echo "Issues with ansible latest version 2.2.1.0, downgrading to working version 2.2.0.0"
yum -y erase ansible
yum install -y "@Development Tools" python2-pip openssl-devel python-devel
pip install -Iv ansible==2.2.0.0
cd ~
git clone https://github.com/sriharsha-at-git/openshift-ansible.git
git clone https://github.com/sriharsha-at-git/installcentos.git
vi installcentos/inventory.erb
echo 127.0.0.1   console.sriharsha.co.in	>> /etc/hosts 
ping console.sriharsha.co.in
ssh-keygen -t rsa
ssh-copy-id root@console.sriharsha.co.in
cd ~
ansible-playboob -i installcentos/inventory.erb ./openshift-ansible/playbooks/byo/config.yml
cd /etc/origin/master/
cat htpasswd
htpasswd -b /etc/origin/master/htpasswd harsh harshpwd
 
