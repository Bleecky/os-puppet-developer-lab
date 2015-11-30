# Configure: os-puppet-developer-lab

$config_dir = '/tmp/os-puppet-developer-lab/files/'

file {'/etc/puppet/puppet.conf':
  ensure => present,
  source => "${config_dir}/puppet.conf",
  notify => Service['puppetmaster']
}

file {'/etc/puppet/hiera.yaml':
  ensure => present,
  source => "${config_dir}/hiera.yaml",
}

file {['/etc/puppet/hieradata','/etc/puppet/hieradata/yaml']:
  ensure  => directory
}

service {'puppetmaster':
  ensure => running
}
