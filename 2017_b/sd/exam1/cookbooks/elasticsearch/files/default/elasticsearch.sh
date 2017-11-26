# Fuente: https://github.com/ICESI/so-monitoring
#!/bin/bash

echo 'Download and unzip Elasticsearch
Note 
Elasticsearch can also be installed from our package repositories using apt or yum. See Repositories in the Guide.'

sleep 1s

'Instalando jdk'
yum install java-1.8.0-openjdk.x86_64 -y

echo 'Importar GPG key'
rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

echo 'Creando archivo con el repositorio de elasticsearch'
echo '
[elasticsearch-5.x]
name=Elasticsearch repository for 5.x packages
baseurl=https://artifacts.elastic.co/packages/5.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md

' >> /etc/yum.repos.d/elasticsearch.repo

echo 'Instalando elasticsearch'
yum install elasticsearch -y
