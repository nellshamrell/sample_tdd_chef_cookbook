include_recipe "tmux_cookbook::default"

# Dependencies required by Ruby

package 'git-core'

package 'curl'

package 'zlib1g-dev'

package 'build-essential'

package 'libssl-dev'

package 'libreadline-dev'

package 'libyaml-dev'

package 'libsqlite3-dev'

package 'sqlite3'

package 'libxml2-dev'

package 'libxslt1-dev'

package 'libcurl4-openssl-dev'

package 'python-software-properties'

# Dependencies required by RVM

package 'libgdbm-dev'

package 'libncurses5-dev'

package 'automake'

package 'libtool'

package 'bison'

package 'libffi-dev'

# Install RVM

execute 'add gpg key for rvm' do
  command 'command curl -sSL https://rvm.io/mpapis.asc | gpg --import -'
end

execute 'install rvm' do
  command 'bash < <( curl -sSL https://get.rvm.io | bash )'
end

=begin
bash "install RVM" do
    user "root"
      code "bash < <( curl -L http://bit.ly/rvm-install-system-wide )"
        not_if "rvm --version"
        end

gem_package 'rvm' do
  action :install
  version '>= 1.11.3.6'
end
=end
