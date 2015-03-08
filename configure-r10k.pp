######         ######
##  Configure R10k ##
######         ######

##  This manifest requires the zack/R10k module and will attempt to
##  configure R10k according to my blog post on directory environments.
##  Beware! (and good luck!)

class { 'r10k':
  version           => '1.4.1',
  sources           => {
    'puppet' => {
      'remote'  => 'https://github.com/Bleecky/control-repo.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    }
  },
  purgedirs         => ["${::settings::confdir}/environments"],
  manage_modulepath => false,
}