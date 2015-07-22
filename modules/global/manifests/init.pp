# Global defaults
#
class global {
  package {['vim','puppet']:
    ensure => latest,
  }
  file { '/srv/puppet/puppet-policy/hiera.yaml':
    ensure  => present,
    content => template('global/srv/puppet/puppet-policy/hiera.yaml.erb'),
  }
  file { '/usr/local/bin/run_puppet.sh':
    ensure  => present,
    content => template('global/usr/local/bin/run_puppet.sh.erb'),
  }
}
