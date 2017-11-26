cookbook_file '/tmp/filebeat.sh' do
	source 'filebeat.sh'
	mode 0711
	owner 'root'
	group 'wheel'
end

bash 'instalacion_filebeat' do
 user 'root'
 group 'wheel'
 cwd '/tmp'
 code <<-EOH
 ./filebeat.sh
 EOH
end
