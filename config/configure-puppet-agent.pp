# Configure: os-puppet-developer-lab

$config_dir = '/tmp/os-puppet-developer-lab/files/'

file {'/etc/puppet/puppet.conf':
  ensure => present,
  source => "${config_dir}/puppet.conf",
}