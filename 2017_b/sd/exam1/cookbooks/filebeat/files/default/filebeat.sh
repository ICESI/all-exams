# Fuente: https://github.com/ICESI/so-monitoring
#!/bin/bash

echo 'Instalación de filebeat (Cliente)'

sleep 1s

echo 'Importar GPG key'
sudo rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

echo 'Creando archivo con el repositorio de filebeat'
echo '
[elastic-5.x]
name=Elastic repository for 5.x packages
baseurl=https://artifacts.elastic.co/packages/5.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md

' >> /etc/yum.repos.d/elastic.repo

echo 'Instalando elasticsearch'
sudo yum install filebeat -y

sudo chkconfig --add filebeat
