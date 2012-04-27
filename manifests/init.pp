# Class: xinetd
#
# This module manages xinetd
#
# Sample Usage:
#   xinetd::service { 'rsync':
#     port        => '873',
#     server      => '/usr/bin/rsync',
#     server_args => '--daemon --config /etc/rsync.conf',
#  }
#
class xinetd {
  include xinetd::params

  package { $xinetd::params::xinetd_package: }

  file { $xinetd::params::xinetd_conffile:
    source => 'puppet:///modules/xinetd/xinetd.conf',
  }

  service { $xinetd::params::xinetd_service:
    ensure  => running,
    enable  => true,
    restart => '/etc/init.d/xinetd reload',
    require => [ Package[$xinetd::params::xinetd_package],
                 File[$xinetd::params::xinetd_conffile] ],
  }
}
