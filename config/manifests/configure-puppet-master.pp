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

file {['/etc/puppet/hieradata','/etc/puppet/hieradata/yaml']: 
  ensure  => directory
}

file {'/etc/puppet/hieradata/yaml/puppetagent01.osuk-puppet-lab.org.yaml':
  ensure  => present,
}

file {'/etc/puppet/hieradata/yaml/puppetagent02.osuk-puppet-lab.org.yaml':
  ensure  => present,
}

file {'/etc/puppet/manifests/nodes.pp':
  ensure  => present,
  source  => "${config_dir}/nodes.pp"
}

file {'/etc/puppet/manifests/site.pp':
  ensure  => present,
  source  => "${config_dir}/site.pp"
}

service {'puppetmaster':
  ensure => running
}
