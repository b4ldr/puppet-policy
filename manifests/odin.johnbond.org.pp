node default {
  class { '::global': }
  class { '::gitlab': }
  class { '::prosody': }
  openssl::certificate::x509 {$::fqdn:
    owner        => 'prosody',
    country      => 'UK',
    organization => $::fqdn,
    commonname   => $::fqdn,
  }
}
