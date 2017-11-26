# Fuente: https://github.com/ICESI/so-monitoring
#!/bin/bash

echo 'Download and unzip Elasticsearch
Note 
Elasticsearch can also be installed from our package repositories using apt or yum. See Repositories in the Guide.'

sleep 1s

echo '
[kibana-5.x]
name=Kibana repository for 5.x packages
baseurl=https://artifacts.elastic.co/packages/5.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
' >> /etc/yum.repos.d/kibana.repo

yum install kibana -y

echo '
# Set the bind address to a specific IP (IPv4 or IPv6):
network.host: 192.168.120.195
# Set a custom port for HTTP:
http.port: 9200

' >> /etc/elasticsearch/elasticsearch.yml

firewall-cmd --zone=public --add-port=9200/tcp --permanent
firewall-cmd --reload

ss -an | grep 9200

echo '
# Kibana is served by a back end server. This setting specifies the port to use.
server.port: 5601
# To allow connections from remote users, set this parameter to a non-loopback address.
server.host: "192.168.120.195"
# The URL of the Elasticsearch instance to use for all your queries.
elasticsearch.url: "http://192.168.56.101:9200"

' >> /etc/kibana/kibana.yml

firewall-cmd --zone=public --add-port=5601/tcp --permanent
firewall-cmd --reload

ss -an | grep 5601

service kibana start & service elasticsearch start

systemctl enable kibana
systemctl enable elastisearch

echo 'Instalando elasticsearch'
yum install elasticsearch -y
