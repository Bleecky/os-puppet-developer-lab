class ospuppetdevelopmentlab(
  $message = "Configuring os-puppet-development-lab"
  ) { 
      notify { $message: }
      
      file {'hiera.yaml':
        ensure  => present,
        path    => '/etc/puppet/hiera.yaml',
        source  => 'puppet:///modules/ospuppetdevelopmentlab/hiera.yaml'
        }

      file {'puppet.conf':
        ensure  => present,
        path    => '/etc/puppet/puppet.conf',
        source  => 'puppet:///modules/ospuppetdevelopmentlab/puppet.conf'
        }

    }
