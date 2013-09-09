include MiniTest::Chef::Assertions
include MiniTest::Chef::Context
include MiniTest::Chef::Resources
include MiniTest::Chef::Infections

describe_recipe 'node_actions::default' do

	before do
	end

	after do
	end

	it "creates a directory for node actions" do
		assert_directory "/usr/local/bin/node_actions", "root", "root", 0755
	end

	it "adds the node actions directory to the execution PATH" do
		test_script = "/tmp/test_node_actions.sh"
		File.open(test_script, 'w') do |file| 
			file.puts("#!/bin/bash -l")
			file.puts("echo $PATH")
		end

		system("chmod u+x #{test_script}")

		`#{test_script}`.must_match /\/usr\/local\/bin\/node_actions/

		FileUtils.rm(test_script)
	end

end