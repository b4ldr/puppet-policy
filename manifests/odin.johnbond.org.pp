node default {
  class { '::global': }
  class { '::prosody': }
  openssl::certificate::x509 {$::fqdn:
    owner        => 'prosody',
    country      => 'UK',
    organization => $::fqdn,
    commonname   => $::fqdn,
  }
}
