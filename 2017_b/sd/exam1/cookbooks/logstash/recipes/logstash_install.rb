cookbook_file '/tmp/logstash.sh' do
	source 'logstash.sh'
	mode 0711
	owner 'root'
	group 'wheel'
end

bash 'instalacion_logstash' do
 user 'root'
 group 'wheel'
 cwd '/tmp'
 code <<-EOH
 ./logstash.sh
 EOH
end
