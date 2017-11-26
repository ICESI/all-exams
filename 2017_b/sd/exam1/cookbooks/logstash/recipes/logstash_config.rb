template '/etc/logstash/conf.d/apache-logstash.conf' do
	source 'apache-logstash.erb'
	mode 0644
	owner 'root'
	group 'wheel'
	variables(
		:ip => node[:ip]
	)
end

service 'logstash' do
    action [ :enable, :start ]
end
