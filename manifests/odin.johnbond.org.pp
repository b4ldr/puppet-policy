node default {
  class { '::global': }
  class { '::prosody': }
  openssl::certificate::x509 {$::fqdn:
    country      => 'UK',
    organization => $::fqdn,
    commonname   => $::fqdn,
  }
  prosody::virtualhost {'johnbond.org':
    ensure  => present,
    require => Openssl::Certificate::X509[$::fqdn],
  }


}
