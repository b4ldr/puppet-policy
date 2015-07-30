node default {
  class { '::global': }
  class { '::gitlab': }
  class { '::prosody': }
  openssl::certificate::x509 {'mail.b4ldr.com':
    country      => 'UK',
    organization => 'b4ldr',
    commonname   => 'mail.b4ldr.com',
  }
  openssl::certificate::x509 {$::fqdn:
    owner        => 'prosody',
    country      => 'UK',
    organization => $::fqdn,
    commonname   => $::fqdn,
  }
}
