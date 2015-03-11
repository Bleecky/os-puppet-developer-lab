# Configure Puppet YUM Repo and Install Puppet Server
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
yum install -y puppet-server 3.7.4-1

# Install r10k module
puppet module install zack/r10k

# Configure r10k
puppet apply /tmp/os-puppet-developer-lab/manifests/configure-r10k.pp

# Configure Puppet
puppet apply /tmp/os-puppet-developer-lab/manifests/configure-puppet-master.pp
