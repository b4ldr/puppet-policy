node default {
  class { '::global': }
  class { '::prosody': }
  openssl::certificate::x509 {$::fqdn:
    country      => 'UK',
    organization => $::fqdn,
    commonname   => $::fqdn,
  }
  prosody::virtualhost {'johnbond.org':
    ensure   => present,
    ssl_key  => '/etc/ssl/certs/odin.johnbond.org.key',
    ssl_cert => '/etc/ssl/certs/odin.johnbond.org.crt',
    require  => Openssl::Certificate::X509[$::fqdn],
  }
}
