# Global defaults
#
class global {
  class { '::locales': }
  class { '::users': }
  package {['vim','puppet','bash-completion']:
    ensure => latest,
  }
  file { '/srv/puppet/puppet-policy/hiera.yaml':
    ensure  => present,
    content => template('global/srv/puppet/puppet-policy/hiera.yaml.erb'),
  }
  file { '/usr/local/bin/run_puppet.sh':
    ensure  => present,
    mode    => '0555',
    content => template('global/usr/local/bin/run_puppet.sh.erb'),
  }
  file { '/etc/puppet/puppet.conf':
    ensure => present,
    source => 'puppet:///modules/global/etc/puppet/puppet.conf',
  }
}
