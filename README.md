# os-puppet-development-lab
Puppet Development Virtual Box Setup for use at os.uk

## Usage

You'll need vgrant and the following plugins for this to work.  
vagrant-hosts  
vagrant-proxy conf

You chaeck which plugins are installed with:  
```vagrant plugin list```

If they're not listed, install the plugin(s):  
```vagrant plugin install vagrant-hosts```  
```vagrant plugin install vagrant-proxyconf```

```dos
git clone https://github.com/Bleecky/os-puppet-developer-lab.git
cd os-puppet-developer-lab
set VAGRANT_CWD=vagrant

vagrant up
```
