<!-- markdownlint-disable MD024 -->
# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## [v3.4.1](https://github.com/puppetlabs/puppetlabs-xinetd/tree/v3.4.1) - 2023-07-18

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/v3.4.0...v3.4.1)

### Other

- Update operatingsystem_support in metadata.json [#132](https://github.com/puppetlabs/puppetlabs-xinetd/pull/132) ([nmburgan](https://github.com/nmburgan))

## [v3.4.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/v3.4.0) - 2023-07-17

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/v3.3.0...v3.4.0)

### Added

- Convert to PDK module and update for Puppet 8 [#125](https://github.com/puppetlabs/puppetlabs-xinetd/pull/125) ([nmburgan](https://github.com/nmburgan))
- Mark compatible with Puppet 7 [#121](https://github.com/puppetlabs/puppetlabs-xinetd/pull/121) ([ekohl](https://github.com/ekohl))

### Other

- Remove redundant qualified class inclusion [#130](https://github.com/puppetlabs/puppetlabs-xinetd/pull/130) ([nmburgan](https://github.com/nmburgan))
- Release merge-back [#116](https://github.com/puppetlabs/puppetlabs-xinetd/pull/116) ([carabasdaniel](https://github.com/carabasdaniel))

## [v3.3.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/v3.3.0) - 2019-05-29

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/3.2.0...v3.3.0)

### Other

- Remove unused stdlib dependency [#114](https://github.com/puppetlabs/puppetlabs-xinetd/pull/114) ([alexjfisher](https://github.com/alexjfisher))

## [3.2.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/3.2.0) - 2019-02-07

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/3.1.0...3.2.0)

### Other

- Support Puppet 6 [#111](https://github.com/puppetlabs/puppetlabs-xinetd/pull/111) ([mmoll](https://github.com/mmoll))
- 3.1.0 Mergeback [#110](https://github.com/puppetlabs/puppetlabs-xinetd/pull/110) ([david22swan](https://github.com/david22swan))

## [3.1.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/3.1.0) - 2018-09-10

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/3.0.0...3.1.0)

### Fixed

- Fix example service [#104](https://github.com/puppetlabs/puppetlabs-xinetd/pull/104) ([arjenz](https://github.com/arjenz))

### Other

- 3.1.0 Pre Release [#109](https://github.com/puppetlabs/puppetlabs-xinetd/pull/109) ([david22swan](https://github.com/david22swan))
- allow puppetlabs-stdlib 5.x [#108](https://github.com/puppetlabs/puppetlabs-xinetd/pull/108) ([mmoll](https://github.com/mmoll))
- (maint) - modulesync 1d81b6a [#105](https://github.com/puppetlabs/puppetlabs-xinetd/pull/105) ([pmcmaw](https://github.com/pmcmaw))

## [3.0.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/3.0.0) - 2017-10-04

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/2.0.0...3.0.0)

### Other

- (MODULES-5676) release prep for 3.0.0 [#102](https://github.com/puppetlabs/puppetlabs-xinetd/pull/102) ([eputnam](https://github.com/eputnam))
- Make server parameter optional and allow service definition without explicit group [#101](https://github.com/puppetlabs/puppetlabs-xinetd/pull/101) ([eputnam](https://github.com/eputnam))
- (maint) modulesync 892c4cf [#100](https://github.com/puppetlabs/puppetlabs-xinetd/pull/100) ([HAIL9000](https://github.com/HAIL9000))
- (maint) modulesync 915cde70e20 [#99](https://github.com/puppetlabs/puppetlabs-xinetd/pull/99) ([glennsarti](https://github.com/glennsarti))
- (MODULES-5187) mysnc puppet 5 and ruby 2.4 [#98](https://github.com/puppetlabs/puppetlabs-xinetd/pull/98) ([eputnam](https://github.com/eputnam))
- (MODULES-5144) Prep for puppet 5 [#97](https://github.com/puppetlabs/puppetlabs-xinetd/pull/97) ([hunner](https://github.com/hunner))
- [msync] 786266 Implement puppet-module-gems, a45803 Remove metadata.json from locales config [#96](https://github.com/puppetlabs/puppetlabs-xinetd/pull/96) ([wilson208](https://github.com/wilson208))
- [MODULES-4528] Replace Puppet.version.to_f version comparison from spec_helper.rb [#95](https://github.com/puppetlabs/puppetlabs-xinetd/pull/95) ([wilson208](https://github.com/wilson208))
- replace legacy validate_* calls [#94](https://github.com/puppetlabs/puppetlabs-xinetd/pull/94) ([bastelfreak](https://github.com/bastelfreak))
- (MODULES-4098) Sync the rest of the files [#93](https://github.com/puppetlabs/puppetlabs-xinetd/pull/93) ([hunner](https://github.com/hunner))
- (MODULES-4097) Sync travis.yml [#92](https://github.com/puppetlabs/puppetlabs-xinetd/pull/92) ([hunner](https://github.com/hunner))
- (FM-5972) gettext and spec.opts [#91](https://github.com/puppetlabs/puppetlabs-xinetd/pull/91) ([eputnam](https://github.com/eputnam))
- (MODULES-3631) msync Gemfile for 1.9 frozen strings [#90](https://github.com/puppetlabs/puppetlabs-xinetd/pull/90) ([hunner](https://github.com/hunner))
- (MODULES-3704) Update gemfile template to be identical [#89](https://github.com/puppetlabs/puppetlabs-xinetd/pull/89) ([hunner](https://github.com/hunner))
- mocha version update [#88](https://github.com/puppetlabs/puppetlabs-xinetd/pull/88) ([eputnam](https://github.com/eputnam))
- (MODULES-3983) Update parallel_tests for ruby 2.0.0 [#87](https://github.com/puppetlabs/puppetlabs-xinetd/pull/87) ([pmcmaw](https://github.com/pmcmaw))
- Update modulesync_config [51f469d] [#85](https://github.com/puppetlabs/puppetlabs-xinetd/pull/85) ([DavidS](https://github.com/DavidS))
- (MODULES-1019) add capability to configure 'passenv' for individual service [#84](https://github.com/puppetlabs/puppetlabs-xinetd/pull/84) ([vchepkov](https://github.com/vchepkov))
- Added missing variables for Archlinux [#83](https://github.com/puppetlabs/puppetlabs-xinetd/pull/83) ([pschichtel](https://github.com/pschichtel))
- Update modulesync_config [a3fe424] [#82](https://github.com/puppetlabs/puppetlabs-xinetd/pull/82) ([DavidS](https://github.com/DavidS))
- Define service_hasstatus/hasrestart for Amazon Linux [#81](https://github.com/puppetlabs/puppetlabs-xinetd/pull/81) ([domcleal](https://github.com/domcleal))
- (MAINT) Update for modulesync_config 72d19f184 [#80](https://github.com/puppetlabs/puppetlabs-xinetd/pull/80) ([DavidS](https://github.com/DavidS))
- (MODULES-3581) modulesync [067d08a] [#79](https://github.com/puppetlabs/puppetlabs-xinetd/pull/79) ([DavidS](https://github.com/DavidS))
- {maint} modulesync 0794b2c [#76](https://github.com/puppetlabs/puppetlabs-xinetd/pull/76) ([tphoney](https://github.com/tphoney))
- Fix newline handling in template to prevent empty lines [#75](https://github.com/puppetlabs/puppetlabs-xinetd/pull/75) ([smoeding](https://github.com/smoeding))
- Add class parameter to set the connection rate limit [#74](https://github.com/puppetlabs/puppetlabs-xinetd/pull/74) ([smoeding](https://github.com/smoeding))

## [2.0.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/2.0.0) - 2016-06-01

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/1.5.0...2.0.0)

### Other

- Release prep for 2.0.0. [#73](https://github.com/puppetlabs/puppetlabs-xinetd/pull/73) ([bmjen](https://github.com/bmjen))
- Update to newest modulesync_configs [3610af2] [#72](https://github.com/puppetlabs/puppetlabs-xinetd/pull/72) ([DavidS](https://github.com/DavidS))
- added suuport for redirect [#71](https://github.com/puppetlabs/puppetlabs-xinetd/pull/71) ([ManfredP](https://github.com/ManfredP))
- Added Archlinux support [#70](https://github.com/puppetlabs/puppetlabs-xinetd/pull/70) ([pschichtel](https://github.com/pschichtel))
- Puppetv4 [#69](https://github.com/puppetlabs/puppetlabs-xinetd/pull/69) ([ghoneycutt](https://github.com/ghoneycutt))
- fix default_user/default_group and add tests [#68](https://github.com/puppetlabs/puppetlabs-xinetd/pull/68) ([sethlyons](https://github.com/sethlyons))
- Update `port` description in `README.md` [#67](https://github.com/puppetlabs/puppetlabs-xinetd/pull/67) ([](https://github.com/))
- Style fixes [#66](https://github.com/puppetlabs/puppetlabs-xinetd/pull/66) ([ekohl](https://github.com/ekohl))
- Validate metadata with Travis-ci [#65](https://github.com/puppetlabs/puppetlabs-xinetd/pull/65) ([tphoney](https://github.com/tphoney))
- Pipe through instances variable from xinetd::service [#61](https://github.com/puppetlabs/puppetlabs-xinetd/pull/61) ([tphoney](https://github.com/tphoney))
- make port an optional parameter to xinetd::service [#60](https://github.com/puppetlabs/puppetlabs-xinetd/pull/60) ([](https://github.com/))
- pin highline for older ruby [#59](https://github.com/puppetlabs/puppetlabs-xinetd/pull/59) ([tphoney](https://github.com/tphoney))
- add variable $service_status to params.pp for Debian to fix error whe… [#58](https://github.com/puppetlabs/puppetlabs-xinetd/pull/58) ([jangrewe](https://github.com/jangrewe))
- fix issue with params.pp with strict_variables enabled [#57](https://github.com/puppetlabs/puppetlabs-xinetd/pull/57) ([smithtrevor](https://github.com/smithtrevor))
- Removed default values and added env [#56](https://github.com/puppetlabs/puppetlabs-xinetd/pull/56) ([underscorgan](https://github.com/underscorgan))
- Support newer versions [#54](https://github.com/puppetlabs/puppetlabs-xinetd/pull/54) ([ghoneycutt](https://github.com/ghoneycutt))
- Enable Travis-ci to use containers for much faster testing [#52](https://github.com/puppetlabs/puppetlabs-xinetd/pull/52) ([ghoneycutt](https://github.com/ghoneycutt))
- Style change to appease puppet-lint [#51](https://github.com/puppetlabs/puppetlabs-xinetd/pull/51) ([ghoneycutt](https://github.com/ghoneycutt))

## [1.5.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/1.5.0) - 2015-02-10

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/1.4.0...1.5.0)

### Other

- 1.5.0 prep [#49](https://github.com/puppetlabs/puppetlabs-xinetd/pull/49) ([underscorgan](https://github.com/underscorgan))
- Pin to rspec-puppet 1.x until migration [#48](https://github.com/puppetlabs/puppetlabs-xinetd/pull/48) ([hunner](https://github.com/hunner))
- Add the ability to manage the xinetd.d conf dir [#47](https://github.com/puppetlabs/puppetlabs-xinetd/pull/47) ([claytono](https://github.com/claytono))
- Add support for 'nice' argument. [#43](https://github.com/puppetlabs/puppetlabs-xinetd/pull/43) ([decibelhertz](https://github.com/decibelhertz))
- add framework for setting package_ensure [#42](https://github.com/puppetlabs/puppetlabs-xinetd/pull/42) ([sethlyons](https://github.com/sethlyons))

## [1.4.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/1.4.0) - 2015-01-20

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/1.3.1...1.4.0)

### Other

- 1.4.0 prep [#46](https://github.com/puppetlabs/puppetlabs-xinetd/pull/46) ([underscorgan](https://github.com/underscorgan))
- Add metadata summary per FM-1523 [#45](https://github.com/puppetlabs/puppetlabs-xinetd/pull/45) ([lrnrthr](https://github.com/lrnrthr))
- make default user and group more dynamic and set appropriate group per O... [#41](https://github.com/puppetlabs/puppetlabs-xinetd/pull/41) ([sethlyons](https://github.com/sethlyons))
- added support for gentoo [#40](https://github.com/puppetlabs/puppetlabs-xinetd/pull/40) ([chrigl](https://github.com/chrigl))
- Prepare 1.3.1 release. [#38](https://github.com/puppetlabs/puppetlabs-xinetd/pull/38) ([apenney](https://github.com/apenney))
- Remove xtype parameter [#37](https://github.com/puppetlabs/puppetlabs-xinetd/pull/37) ([roman-mueller](https://github.com/roman-mueller))

## [1.3.1](https://github.com/puppetlabs/puppetlabs-xinetd/tree/1.3.1) - 2014-07-15

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/1.3.0...1.3.1)

### Other

- Prepare 1.3.1 release. [#38](https://github.com/puppetlabs/puppetlabs-xinetd/pull/38) ([apenney](https://github.com/apenney))

## [1.3.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/1.3.0) - 2014-06-18

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/1.2.0...1.3.0)

### Other

- Prep for 1.3.0 release. [#36](https://github.com/puppetlabs/puppetlabs-xinetd/pull/36) ([underscorgan](https://github.com/underscorgan))
- Allow configuring log_on_* operator [#35](https://github.com/puppetlabs/puppetlabs-xinetd/pull/35) ([claytono](https://github.com/claytono))
- Updated readme to have markdown syntax [#30](https://github.com/puppetlabs/puppetlabs-xinetd/pull/30) ([solarkennedy](https://github.com/solarkennedy))
- Test against Puppet v3.4.0 [#29](https://github.com/puppetlabs/puppetlabs-xinetd/pull/29) ([ghoneycutt](https://github.com/ghoneycutt))
- Enable fast finish in Travis [#28](https://github.com/puppetlabs/puppetlabs-xinetd/pull/28) ([ghoneycutt](https://github.com/ghoneycutt))
- Change license from GPLv2 to ASLv2 [#27](https://github.com/puppetlabs/puppetlabs-xinetd/pull/27) ([ghoneycutt](https://github.com/ghoneycutt))
- Add Amazon support [#25](https://github.com/puppetlabs/puppetlabs-xinetd/pull/25) ([ekohl](https://github.com/ekohl))
- Remove duplicated paramater $log_on_failure [#23](https://github.com/puppetlabs/puppetlabs-xinetd/pull/23) ([davidcollom](https://github.com/davidcollom))
- Parameter for logging success [#22](https://github.com/puppetlabs/puppetlabs-xinetd/pull/22) ([philipcohoe](https://github.com/philipcohoe))
- removing typo in resource definition for Puppet 2.6.0 [#20](https://github.com/puppetlabs/puppetlabs-xinetd/pull/20) ([lzap](https://github.com/lzap))
- Update restart and status checking [#19](https://github.com/puppetlabs/puppetlabs-xinetd/pull/19) ([hunner](https://github.com/hunner))
- Add first rspec-system tests [#18](https://github.com/puppetlabs/puppetlabs-xinetd/pull/18) ([hunner](https://github.com/hunner))
- Release 1.2.0 [#17](https://github.com/puppetlabs/puppetlabs-xinetd/pull/17) ([hunner](https://github.com/hunner))

## [1.2.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/1.2.0) - 2013-07-30

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/1.1.0...1.2.0)

### Other

- Update specs for travis [#16](https://github.com/puppetlabs/puppetlabs-xinetd/pull/16) ([hunner](https://github.com/hunner))
- Rebase pdxcat/xinetd against new upstream [#15](https://github.com/puppetlabs/puppetlabs-xinetd/pull/15) ([blkperl](https://github.com/blkperl))
- Use @var for puppet 3.2 compatibility [#12](https://github.com/puppetlabs/puppetlabs-xinetd/pull/12) ([ekohl](https://github.com/ekohl))
- Include the xinetd class from xinetd::service type. [#4](https://github.com/puppetlabs/puppetlabs-xinetd/pull/4) ([benburkert](https://github.com/benburkert))
- Add site.pp file for spec tests [#3](https://github.com/puppetlabs/puppetlabs-xinetd/pull/3) ([branan](https://github.com/branan))
- Add initial spec tests [#2](https://github.com/puppetlabs/puppetlabs-xinetd/pull/2) ([branan](https://github.com/branan))
- Update for new forge release [#1](https://github.com/puppetlabs/puppetlabs-xinetd/pull/1) ([branan](https://github.com/branan))

## [1.1.0](https://github.com/puppetlabs/puppetlabs-xinetd/tree/1.1.0) - 2012-06-07

[Full Changelog](https://github.com/puppetlabs/puppetlabs-xinetd/compare/cb1323333b8734f35b90cee20b6a8a420f3fd885...1.1.0)
