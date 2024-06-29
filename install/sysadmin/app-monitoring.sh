# SYSTEM AND MONITORING TOOLS

# Nagios
# An industry-standard solution that offers comprehensive monitoring capabilities, alerting administrators to system and network irregularities.
cd /tmp
sudo apt install wget unzip curl openssl build-essential libgd-dev libssl-dev libapache2-mod-php php-gd php apache2 -y
wget https://assets.nagios.com/downloads/nagiosxi/agents/linux-nrpe-agent.tar.gz
sudo tar xzf linux-nrpe-agent.tar.gz
cd linux-nrpe-agent
sudo -i ./fullinstall

# Zabbix
# A robust monitoring tool that excels in scalability and flexibility, providing detailed data collection and visualization features.
cd /tmp
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-6+ubuntu24.04_all.deb
sudo dpkg -i zabbix-release_6.0-6+ubuntu24.04_all.deb
sudo apt update 
sudo apt install zabbix-proxy-mysql zabbix-sql-scripts
# check for more info
# https://www.zabbix.com/download?zabbix=6.0&os_distribution=ubuntu&os_version=24.04&components=proxy&db=mysql&ws=

# Prometheus
# An open-source monitoring system with a powerful query language and alerting functions, particularly suited for dynamic cloud environments.

# installing grafana
# sudo apt install gnupg2 apt-transport-https software-properties-common wget
# wget -q -O - https://packages.grafana.com/gpg.key > grafana.key #get key
# cat grafana.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/grafana.gpg > /dev/null
# adding grafana to your apt source 
# echo 'deb [signed-by=/etc/apt/trusted.gpg.d/grafana.gpg] https://packages.grafana.com/oss/deb stable main' | tee /etc/apt/sources.list.d/grafana.list
# sudo apt update

# sudo apt install grafana

# systemctl daemon-reload

# systemctl start grafana-server

# systemctl status grafana-server

# groupadd --system prometheus
# useradd -s /sbin/nologin --system -g prometheus prometheus

# /var/lib/prometheus
# for i in rules rules.d files_sd; do mkdir -p /etc/prometheus/${i}; done

# curl -s https://api.github.com/repos/prometheus/prometheus/releases/latest|grep browser_download_url|grep linux-amd64|cut -d '"' -f 4|wget -qi -

# tar xvf prometheus*.tar.gz