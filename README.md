# xinetd
[![Build Status](https://travis-ci.org/puppetlabs/puppetlabs-xinetd.png)](https://travis-ci.org/puppetlabs/puppetlabs-xinetd)

This is the xinetd module.

## Overview

This module configures xinetd, and exposes the xinetd::service definition
for adding new services.

## Class: xinetd

Sets up the xinetd daemon. Has options for you in case you have specific
package names and service needs.

### Parameters

 * `confdir`
 * `conffile`
 * `package_name`
 * `service_name`
 * `service_restart`
 * `service_status`
 * `service_hasrestart`
 * `service_hasstatus`

Additionally, all the global defaults in the main xinetd.conf can be set. By 
default they are *not* set, allowing the internal xinetd defaults to be used:
(see `man xinetd.conf` for full descriptions)

 * `enabled`        - Takes a list of service ID's to enable.
 * `disabled`       - Takes a list of service ID's to disable.
 * `log_type`       - Determines where the service log output is sent.
 * `log_on_failure` - Determines what information is logged when a server cannot be started.
 * `log_on_success` - Determines what information is logged when a server is started and when that server exits.
 * `no_access`      - Determines the remote hosts to which the particular service is unavailable.
 * `only_from`      - Determines the remote hosts to which the particular service is available.
 * `max_load`       - Takes a floating point value as the load at which the service will stop accepting connections.
 * `cps`            - Takes two numbers to set a rate limit for incoming connections. The first number is the number of connections per second at which the service is disabled. The second number is the time in seconds before the service will be enabled again.
 * `instances`      - Determines the number of servers that can be simultaneously active for a service (the default is no limit).
 * `per_source`     - This specifies the maximum instances of this service per source IP address. 
 * `bind`           - Allows a service to be bound to a specific interface on the machine.
 * `mdns`           - On systems that support mdns registration of services (currently only Mac OS X), this will enable or disable registration of the service.
 * `v6only`         - Set to yes to use IPv6 only.
 * `passenv`        - The value of this attribute is a list of environment variables from xinetd's environment that will be passed to the server.
 * `env`            - The value of this attribute is a list of environment variables that will be added to the environment before starting a server.
 * `groups`         - If the groups attribute is set to "yes", then the server is executed with access to the groups that the server's effective UID has access to.
 * `umask`          - Sets the inherited umask for the service.
 * `banner`         - Takes the name of a file to be splatted at the remote host when a connection to that service is established.
 * `banner_fail`    - Takes the name of a file to be splatted at the remote host when a connection to that service is denied.
 * `banner_success` - Takes the name of a file to be splatted at the remote host when a connection to that service is granted. 

## Definition: xinetd::service

Sets up a xinetd service. All parameters match up with xinetd.conf(5) man
page.

### Parameters:

 * `server`       - optional - determines the program to execute for this service (either this or `redirect` is required)
 * `redirect`     - optional - ip or hostname and port of the target service (either this or `server` is required)
 * `port`         - optional - determines the service port (required if service is not listed in `/etc/services`)
 * `cps`          - optional
 * `flags`        - optional
 * `per_source`   - optional
 * `server_args`  - optional
 * `disable`      - optional - defaults to "no"
 * `socket_type`  - optional - defaults to "stream"
 * `protocol`     - optional - defaults to "tcp"
 * `user`         - optional - defaults to "root"
 * `group`        - optional - defaults to "root"
 * `use_default_group` - optional - set to "false" to prevent using the OS specific default group for the service, defaults to "true"
 * `instances`    - optional - defaults to "UNLIMITED"
 * `wait`         - optional - based on $protocol will default to "yes" for udp and "no" for tcp
 * `service_type` - optional - type setting in xinetd
 * `nice`         - optional - integer between -20 and 19, inclusive.

Either the `server` or the `redirect` parameter must be set.

### Sample Usage

```puppet
xinetd::service { 'tftp':
  port        => '69',
  server      => '/usr/sbin/in.tftpd',
  server_args => '-s /var/lib/tftp/',
  socket_type => 'dgram',
  protocol    => 'udp',
  cps         => '100 2',
  flags       => 'IPv4',
  per_source  => '11',
}
```

```puppet
xinetd::service { 'ssh-tunnel-host_example_com':
  port         => '2222',
  redirect     => 'host.example.com 22',
  flags        => 'REUSE',
  service_type => 'UNLISTED',
  bind         => "${::ipaddress_eth1}",
  only_from    => '10.130.50.174',
}
```

## Supported OSes

Supports Debian, FreeBSD, Suse, RedHat, and Amazon Linux OS Families. 



