execute 'postMirror' do
  command 'yum localinstall http://yum.postgresql.org/9.4/redhat/rhel-6.4-i386/pgdg-centos94-9.4-1.noarch.rpm -y'
end

yum_package 'postgresql94-server' do
  action :install
end

execute 'initdb' do
  command 'service postgresql-9.4 initdb'
end

execute 'nextinitdb' do
  command 'chkconfig postgresql-9.4 on'
end

execute 'nextnextinitdb' do
  command 'service postgresql-9.4 start'
end

bash "open port" do
	user "root"
	code <<-EOH
	iptables -I INPUT 5 -p tcp -m state --state NEW -m tcp --dport 5432 -j ACCEPT
	service iptables save
	EOH
end

cookbook_file "/var/lib/pgsql/9.4/data/pg_hba.conf" do
	source "pg_hba.conf"
	mode 0711
	owner "root"
	group "wheel"
        action :create
end

cookbook_file "/var/lib/pgsql/9.4/data/postgresql.conf" do
	source "postgresql.conf"
	mode 0711
	owner "postgres"
	group "wheel"
        action :create
end

cookbook_file "/tmp/create_schema.sql" do
	source "create_schema.sql"
	mode 0644
	owner "root"
	group "wheel"
end

bash "create schema" do
	user "postgres"
	cwd "/tmp"
	code <<-EOH
	psql < create_schema.sql
	EOH
end
