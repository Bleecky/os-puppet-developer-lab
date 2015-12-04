######         ######
##  Configure R10k ##
######         ######

##  This manifest requires the zack/R10k module and will attempt to
##  configure R10k according to my blog post on directory environments.
##  Beware! (and good luck!)

class { 'r10k':
  sources           => {
    'puppet' => {
      'remote'  => 'https://github.com/Bleecky/os-puppet-developer-lab',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    }
  },
}
