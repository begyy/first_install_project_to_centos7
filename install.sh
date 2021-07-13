sudo yum -y update &&
sudo yum -y install epel-release &&
sudo yum -y install nginx &&
sudo yum -y install yum-utils &&
sudo yum -y install python3


sudo yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo yum install -y postgresql12-server
sudo /usr/pgsql-12/bin/postgresql-12-setup initdb
sudo systemctl enable postgresql-12
sudo systemctl start postgresql-12

sudo systemctl enable nginx 
sudo systemctl start nginx


sudo firewall-cmd --add-service=http
sudo firewall-cmd --add-service=https
sudo firewall-cmd --runtime-to-permanent

sudo iptables -I INPUT -p tcp -m tcp --dport 80 -j ACCEPT
sudo iptables -I INPUT -p tcp -m tcp --dport 443 -j ACCEPT


sudo yum -y install nano
sudo yum -y install certbot

pip3 install supervisor
pip3 install virtualenv

mkdir /web 
mkdir /web/wd
mkdir /web/wd/system
mkdir /web/wd/log


