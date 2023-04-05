# Install Puppet-Lint package
class { 'puppet_lint':
  ensure => present,
}
# Define package resource type
define mypackage (
  $ensure   = 'installed',
  $provider = 'yum',
) {
  package { $name:
    ensure   => $ensure,
    provider => $provider,
  }
}
