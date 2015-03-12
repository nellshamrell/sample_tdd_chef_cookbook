require 'serverspec'

set :backend, :exec

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  # You can disable apache2 to make this test fail with 'kitchen login' then running sudo update-rc.d -f apache2 disable
  it { should be_enabled }

  # You can disable apache2 to make this test fail with 'kitchen login' then running sudo service apache2 stop
  it { should be_running }
end
