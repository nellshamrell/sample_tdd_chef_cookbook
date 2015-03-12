execute 'apt_update' do
  command "apt-get update"
  action :run
end

package 'apache2' # Installs the apache2 package

service 'apache2' do
  action [:start, :enable]
end
