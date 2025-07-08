#
# Cookbook:: mock_arcgis
# Recipe:: install_server
#

directory node['mock_arcgis']['install_dir'] do
  recursive true
  action :create
end

directory node['mock_arcgis']['log_dir'] do
  recursive true
  action :create
end

file "#{node['mock_arcgis']['install_dir']}/install.log" do
  content "Mock ArcGIS Server installed at #{Time.now}"
  mode '0644'
  action :create_if_missing
end

template "#{node['mock_arcgis']['install_dir']}/mock.conf" do
  source 'mock.conf.erb'
  variables(
    user: node['mock_arcgis']['admin_user'],
    license: node['mock_arcgis']['license_file']
  )
end

log 'Mock ArcGIS Server installation complete.' do
  level :info
end

