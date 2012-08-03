julia_jenkins_plugins = ["git","ircbot"]#, "github-api", "github-oauth", "github"]

include_recipe "jenkins"

home_path = node[:jenkins][:server][:home]

julia_jenkins_plugins.each do |name|
    jenkins_plugin name do
        action :create
    end
end

#directory "#{home_path}/config_sources" do
#    action :create
#end
 
#template "#{home_path}/config_sources/githubauth.xml" do
#    source "githubauth.xml.erb"
#end

#jenkins_config "#{home_path}/config.xml" do
#   local_file "#{home_path}/config_sources/githubauth.xml"
#   action :merge
#end
