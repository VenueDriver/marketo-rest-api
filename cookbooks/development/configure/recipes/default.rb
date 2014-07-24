execute "rubygems" do
  user "root"
  command "gem update --system 2.1.0"
end

gem_package "bundler" do
  action :install
  version '1.3.5'
end

gem_package "rake" do
  action :install
  version '0.8.7'
end

execute "Run Bundler Install" do
  user "root"
  cwd "/vagrant"
  command "bundle install"
end