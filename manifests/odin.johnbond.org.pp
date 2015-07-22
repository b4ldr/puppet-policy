node default {
  class { '::global': }
  class { '::prosody': }
  prosody::virtualhost {'johnbond.org':
    ensure => present,
  }

}
