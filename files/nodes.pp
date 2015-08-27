# nodes.pp
# This file is for common settings required by all servers
# Individual node definitions should be managed in project-environment.pp files
#
$message = "Puppet run on ${fqdn}"
# Puppet Agents
node /^puppetagent\d+$/ {
  notify { $message: }
}

# Puppet Master Server
node 'puppetmaster.osuk-puppet-lab.org' {
  notify { $message: }
}
