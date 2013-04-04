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

  package { 'xinetd': }

  file { '/etc/xinetd.conf':
    source => 'puppet:///modules/xinetd/xinetd.conf',
  }

  service { 'xinetd':
    ensure  => running,
    enable  => true,
    restart => 'pkill -1 xinetd',
    require => [ Package['xinetd'],
                File['/etc/xinetd.conf'] ],
  }
}
