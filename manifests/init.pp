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

  File {
    owner   => 'root',
    group   => '0',
    notify  => Service[$xinetd::params::xinetd_service],
    require => Package[$xinetd::params::xinetd_package],
  }

  file { $xinetd::params::xinetd_confdir:
    ensure  => directory,
    mode    => '0755',
  }

  file { $xinetd::params::xinetd_conffile:
    ensure  => file,
    mode    => '0644',
    content => template('xinetd/xinetd.conf.erb'),
  }

  package { $xinetd::params::xinetd_package:
    ensure => installed,
    before => Service[$xinetd::params::xinetd_service],
  }

  service { $xinetd::params::xinetd_service:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => File[$xinetd::params::xinetd_conffile],
  }

}
