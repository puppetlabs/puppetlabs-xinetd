xinetd
====

Overview
--------

The xinetd module installs, configures, and manages the xinetd service.


Module Description
-------------------

The xinetd module allows Puppet to install, configure, and then manage your xinetd service. This includes managing services which should be run through xinetd.

Setup
-----

**What xinetd affects:**

* package/service/configuration files for xinetd
* server settings
	
### Beginning with xinetd

To setup xinetd on a server

	class { "xinetd": }

Usage
------

When making changes to your configuration of xinetd, you may need to stop and restart the xinetd service. 

By itself, xinetd is pretty useless. However, it allows wonderful management of services. For example:

	xinetd::service {"ftp":
		server		=> "/usr/sbin/proftpd",
		server_args	=> "-e /etc/proftpd/proftpd.conf",
		port		=> "21",
		flags		=> "REUSE",
	}

**Parameters within `xinetd`**

#### Required Parameters
-	`server`	- The program to execute for the service.
-	`port`		- What port to listen on

#### Optional Parameters
-	`server_args`	- Arguments to pass to the server process on launch.
-	`disable`		- Whether to disable the service. Defaults to "no"
-	`socket_type`	- Defaults to "stream"
-	`protocol`		- Defaults to "tcp"
-	`user`			- User to run as. Defaults to "root"
-	`group`		- Defaults to "root"
-	`instances`	- Number of instances. Defaults to "UNLIMITED"
-	`wait`			- Based on $protocol will default to "yes" for udp and "no" for tcp
-	`service_type`	- Type setting in xinetd
-	`only_from`	- Remote hosts to which the service is made available.

Limitations
------------

This module has been built and tested using Puppet 2.7.

The module has been tested on:

* Kubuntu 13.04

Testing on other platforms has been light and cannot be guaranteed. 

Release Notes
--------------

**2.0**

Version 2.0 is the first release since forking from the Puppet Labs xinetd project.
The version number was chosen to recognize the huge contribution (almost all code) of the
Puppet Labs staff, but also in recognition that this is a new step forward.
