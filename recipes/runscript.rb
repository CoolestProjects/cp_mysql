
if (node['cp_mysql']['run_script'] != '')
	execute "mysql-run-script" do
	  command "mysql -u root -p#{node['mysql']['server_root_password']} < #{node['cp_mysql']['run_script']}"      
	end
end