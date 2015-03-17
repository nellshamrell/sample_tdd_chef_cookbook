require 'serverspec'

set :backend, :exec

# Dependencies required by Ruby

describe package('git-core') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('zlib1g-dev') do
  it { should be_installed }
end

describe package('build-essential') do
  it { should be_installed }
end

describe package('libssl-dev') do
  it { should be_installed }
end

describe package('libreadline-dev') do
  it { should be_installed }
end

describe package('libyaml-dev') do
  it { should be_installed }
end

describe package('libsqlite3-dev') do
  it { should be_installed }
end

describe package('sqlite3') do
  it { should be_installed }
end

describe package('libxml2-dev') do
  it { should be_installed }
end

describe package('libxslt1-dev') do
  it { should be_installed }
end

describe package('libcurl4-openssl-dev') do
  it { should be_installed }
end

describe package('python-software-properties') do
  it { should be_installed }
end

# Dependencies required by RVM

describe package('libgdbm-dev') do
  it { should be_installed }
end

describe package('libncurses5-dev') do
  it { should be_installed }
end

describe package('automake') do
  it { should be_installed }
end

describe package('libtool') do
  it { should be_installed }
end

describe package('bison') do
  it { should be_installed }
end

describe package('libffi-dev') do
  it { should be_installed }
end

# Installing RVM

describe command('gpg --list-keys')do
  its(:stdout) { should match /Michal Papis \(RVM signing\) <mpapis@gmail.com>/ }
end
