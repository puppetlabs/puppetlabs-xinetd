# Class: xinetd
#
# This module manages xinetd
#
# Sample Usage:
#   xinetd::service {"rsync":
#       port        => "873",
#       server      => "/usr/bin/rsync",
#       server_args => "--daemon --config /etc/rsync.conf",
#  }
#
class xinetd {

    # xinetd::service sets up a xinetd service
    # $cps, $flags, $per_source, $server_args, and $wait are optional
    define service ($cps = undef, $flags = undef, $per_source = undef, $port, $server, $server_args = undef, $disable = "no", $socket_type = "stream", $protocol = "tcp", $user = "root", $group = "root", $instances = "UNLIMITED", $wait = undef) {
        if $wait {
            $mywait = $wait
        } else {
            $mywait = $protocol ? {
                tcp => "no",
                udp => "yes"
            }
        } # fi $wait

        file { "/etc/xinetd.d/$name":
            content => template("xinetd/service.erb"),
            notify  => Service["xinetd"],
        } # file
    } # define service

    package { "xinetd": }
    
    file { "/etc/xinetd.conf":
        source => "puppet:///modules/xinetd/xinetd.conf",
    } # file

    service { "xinetd":
        ensure  => running,
        enable  => true,
        require => [ Package["xinetd"], File["/etc/xinetd.conf"] ],
        restart => "/etc/init.d/xinetd reload",
    } # service
} # class xinetd
