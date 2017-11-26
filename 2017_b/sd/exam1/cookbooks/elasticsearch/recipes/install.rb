cookbook_file '/tmp/script_bash.sh' do
	source 'script_bash.sh'
	mode 0711
	owner 'root'
	group 'wheel'
end

bash 'instalacion_elasticsearch' do
 user 'root'
 group 'wheel'
 cwd '/tmp'
 code <<-EOH
 ./script_bash.sh
 EOH
end
