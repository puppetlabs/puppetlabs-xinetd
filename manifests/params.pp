# == Class: xinetd::params
#
class xinetd::params {
  $default_user   = 'root'
  $package_ensure = 'installed'

  case $facts['os']['family'] {
    'FreeBSD': { $default_group = 'wheel' }
    default: { $default_group = 'root' }
  }

  case $facts['os']['family'] {
    'Debian':  {
      $confdir            = '/etc/xinetd.d'
      $conffile           = '/etc/xinetd.conf'
      $package_name       = 'xinetd'
      $service_hasrestart = true
      $service_hasstatus  = false
      $service_name       = 'xinetd'
      $service_restart    = "/usr/sbin/service ${service_name} reload"
      $service_status     = undef
    }
    'FreeBSD': {
      $confdir            = '/usr/local/etc/xinetd.d'
      $conffile           = '/usr/local/etc/xinetd.conf'
      $package_name       = 'security/xinetd'
      $service_hasrestart = false
      $service_hasstatus  = true
      $service_name       = 'xinetd'
      $service_restart    = undef
      $service_status     = undef
    }
    'Suse':  {
      $confdir            = '/etc/xinetd.d'
      $conffile           = '/etc/xinetd.conf'
      $package_name       = 'xinetd'
      $service_hasrestart = true
      $service_hasstatus  = false
      $service_name       = 'xinetd'
      $service_restart    = "/sbin/service ${service_name} reload"
      $service_status     = undef
    }
    'RedHat':  {
      $confdir            = '/etc/xinetd.d'
      $conffile           = '/etc/xinetd.conf'
      $package_name       = 'xinetd'
      $service_hasrestart = true
      $service_hasstatus  = true
      $service_name       = 'xinetd'
      $service_restart    = "/sbin/service ${service_name} reload"
      $service_status     = undef
    }
    'Gentoo': {
      $confdir            = '/etc/xinetd.d'
      $conffile           = '/etc/xinetd.conf'
      $package_name       = 'sys-apps/xinetd'
      $service_hasrestart = true
      $service_hasstatus  = true
      $service_name       = 'xinetd'
      $service_restart    = undef
      $service_status     = undef
    }
    'Archlinux': {
      $confdir            = '/etc/xinetd.d'
      $conffile           = '/etc/xinetd.conf'
      $package_name       = 'xinetd'
      $service_hasrestart = true
      $service_hasstatus  = true
      $service_name       = 'xinetd'
      $service_restart    = undef
      $service_status     = undef
    }
    'Linux': {
      case $facts['os']['name'] {
        'Amazon': {
          $confdir            = '/etc/xinetd.d'
          $conffile           = '/etc/xinetd.conf'
          $package_name       = 'xinetd'
          $service_name       = 'xinetd'
          $service_hasrestart = true
          $service_hasstatus  = false
          $service_restart    = undef
          $service_status     = undef
        }
        default: {
          fail("xinetd: module does not support Linux operatingsystem ${facts['os']['name']}")
        }
      }
    }
    default:   {
      fail("xinetd: module does not support osfamily ${facts['os']['family']}")
    }
  }

}
