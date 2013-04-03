# these parameters should be considered to be constant
class xinetd::params {
  if($::operatingsystem == 'Fedora' and $::operatingsystemrelease >= 16){
     $xinetd_restart_command = '/usr/bin/systemctl restart xinetd.service'
  } else {
     $xinetd_restart_command = '/etc/init.d/xinetd reload'
  }
}
