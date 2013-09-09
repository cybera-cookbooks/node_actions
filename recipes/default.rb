directory "/usr/local/bin/node_actions" do
	owner "root"
	group "root"
	mode 00755
	action :create
end

template "/etc/profile.d/node_actions.sh" do
	source "node_actions_path.sh.erb"
	owner "root"
	group "root"
	mode 00644
end
