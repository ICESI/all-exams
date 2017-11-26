cookbook_file '/tmp/kibana.sh' do
	source 'kibana.sh'
	mode 0711
	owner 'root'
	group 'wheel'
end

bash 'instalacion_kibana' do
 user 'root'
 group 'wheel'
 cwd '/tmp'
 code <<-EOH
 ./kibana.sh
 EOH
end
