# Configure: os-puppet-developer-lab

$config_dir = '/tmp/os-puppet-developer-lab/files/'

file {'/etc/puppet/puppet.conf':
  ensure => present,
  source => "${config_dir}/puppet.conf",
}

file {'/etc/puppet/hiera.yaml':
  ensure => present,
  source => "${config_dir}/hiera.yaml",
}

file {'/etc/puppet/manifests/nodes.pp':
  ensure  => present,
  source  => "${config_dir}/nodes.pp"
}

file {'/etc/puppet/manifests/site.pp':
  ensure  => present,
  source  => "${config_dir}/nodes.pp"
}
