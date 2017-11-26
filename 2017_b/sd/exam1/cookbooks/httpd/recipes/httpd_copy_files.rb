cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  mode 0644
  owner 'root'
end

#node[:courses].each do |course|
#   puts "<h1>#{course[:name]}</h1>"
#end

template '/var/www/html/courses.html' do
	source 'courses.erb'
	mode 0644
	owner 'root'
	group 'wheel'
	variables(
		:courses => node[:courses]
	)
end
