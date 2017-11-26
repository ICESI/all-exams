# Fuente: https://github.com/ICESI/so-monitoring
#!/bin/bash

echo 'Importar GPG key'
rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

echo 'Creando archivo con el repositorio de elasticsearch'
echo '
[logstash-5.x]
name=Elastic repository for 5.x packages
baseurl=https://artifacts.elastic.co/packages/5.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md

' >> /etc/yum.repos.d/logstash.repo

echo 'Instalando elasticsearch'
yum install logstash -y
