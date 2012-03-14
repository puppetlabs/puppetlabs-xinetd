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

    # Definition: xinetd::service
    #
    # sets up a xinetd service
    # all parameters match up with xinetd.conf(5) man page
    #
    # Parameters:   
    #   $cps         - optional
    #   $flags       - optional
    #   $per_source  - optional
    #   $port        - required - determines the service port
    #   $server      - required - determines the program to execute for this service
    #   $server_args - optional
    #   $disable     - optional - defaults to "no"
    #   $socket_type - optional - defaults to "stream"
    #   $protocol    - optional - defaults to "tcp"
    #   $user        - optional - defaults to "root"
    #   $group       - optional - defaults to "root"
    #   $instances   - optional - defaults to "UNLIMITED"
    #   $wait        - optional - based on $protocol will default to "yes" for udp and "no" for tcp
    #
    # Actions:
    #   setups up a xinetd service by creating a file in /etc/xinetd.d/
    #
    # Requires:
    #   $server must be set
    #
    # Sample Usage:
    #   # setup tftp service
    #   xinetd::service {"tftp":
    #       port        => "69",
    #       server      => "/usr/sbin/in.tftpd",
    #       server_args => "-s $base",
    #       socket_type => "dgram",
    #       protocol    => "udp",
    #       cps         => "100 2",
    #       flags       => "IPv4",
    #       per_source  => "11",
    #   } # xinetd::service
    #
    define service ($cps = undef, $flags = undef, $per_source = undef, $port, $server, $server_args = undef, $disable = "no", $socket_type = "stream", $protocol = "tcp", $user = "root", $group = "root", $instances = "UNLIMITED", $wait = undef, $bind = '0.0.0.0') {
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
