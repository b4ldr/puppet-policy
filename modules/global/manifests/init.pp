# Global defaults
#
class global {
  file { '/srv/puppet/puppet-policy/hiera.yaml':
    ensure  => present,
    content => template('global/srv/puppet/puppet-policy/hiera.yaml.erb'),
  }
}
