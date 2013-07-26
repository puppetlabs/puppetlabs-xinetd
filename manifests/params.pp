class xinetd::params {

  case $::osfamily {
    'Debian':  {
      $xinetd_confdir  = '/etc/xinetd.d'
      $xinetd_conffile = '/etc/xinetd.conf'
      $xinetd_package  = 'xinetd'
      $xinetd_service  = 'xinetd'
    }
    'FreeBSD': {
      $xinetd_confdir  = '/usr/local/etc/xinetd.d'
      $xinetd_conffile = '/usr/local/etc/xinetd.conf'
      $xinetd_package  = 'security/xinetd'
      $xinetd_service  = 'xinetd'
    }
    'Suse':  {
      $xinetd_confdir  = '/etc/xinetd.d'
      $xinetd_conffile = '/etc/xinetd.conf'
      $xinetd_package  = 'xinetd'
      $xinetd_service  = 'xinetd'
    }
    'Solaris': {
      fail('xinetd: module does not support Solaris')
    }
    default:   {
      $xinetd_confdir  = '/etc/xinetd.d'
      $xinetd_conffile = '/etc/xinetd.conf'
      $xinetd_package  = 'xinetd'
      $xinetd_service  = 'xinetd'
    }
  }

}

