# <Center> Mysql installation

## Set up yum repository on all 5 systems:

Copy over the current mysql community release REPO information.

```
scp -i "cloudera1.pem" mysql57-community-release-el7-9.noarch.rpm ec2-user@ec2-54-196-83-198.compute-1.amazonaws.com:/tmp/.
```
Install the REPO RPM

```
# rpm -Uvh /tmp/mysql57-community-release-el7-9.noarch.rpm
warning: /tmp/mysql57-community-release-el7-9.noarch.rpm: Header V3 DSA/SHA1 Signature, key ID 5072e1f5: NOKEY
Preparing...                          ################################# [100%]
Updating / installing...
   1:mysql57-community-release-el7-9  ################################# [100%]
```

Check the mysql-community.repo file, comment out the 5.7 repository, enable
the 5.5 repository, and confirm

```
[root@ip-172-31-63-2 tmp]# cd /etc/yum.repos.d
[root@ip-172-31-63-2 yum.repos.d]# ls
mysql-community.repo         redhat-rhui-client-config.repo
mysql-community-source.repo  redhat-rhui.repo
redhat.repo                  rhui-load-balancers.conf
[root@ip-172-31-63-2 yum.repos.d]# yum repolist all | grep mysql
mysql-connectors-community/x86_64                           MySQ enabled:     21
mysql-connectors-community-source                           MySQ disabled
mysql-tools-community/x86_64                                MySQ enabled:     36
mysql-tools-community-source                                MySQ disabled
mysql-tools-preview/x86_64                                  MySQ disabled
mysql-tools-preview-source                                  MySQ disabled
mysql55-community/x86_64                                    MySQ disabled
mysql55-community-source                                    MySQ disabled
mysql56-community/x86_64                                    MySQ disabled
mysql56-community-source                                    MySQ disabled
mysql57-community/x86_64                                    MySQ enabled:    128
mysql57-community-source                                    MySQ disabled
mysql80-community/x86_64                                    MySQ disabled
mysql80-community-source                                    MySQ disabled
[root@ip-172-31-63-2 yum.repos.d]# vi mysql-community.repo
[root@ip-172-31-63-2 yum.repos.d]# yum repolist enabled | grep mysql
mysql-connectors-community/x86_64                MySQL Connectors Communi     21
mysql-tools-community/x86_64                     MySQL Tools Community        36
mysql55-community/x86_64                         MySQL 5.5 Community Serv    259
```

## Install mysql on all 5 AWS servers

```
[root@ip-172-31-63-2 yum.repos.d]# yum install mysql
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
Resolving Dependencies
--> Running transaction check
---> Package mysql-community-client.x86_64 0:5.5.52-2.el7 will be installed
--> Processing Dependency: mysql-community-libs(x86-64) >= 5.5.8 for package: mysql-community-client-5.5.52-2.el7.x86_64
--> Processing Dependency: perl(Sys::Hostname) for package: mysql-community-client-5.5.52-2.el7.x86_64
--> Processing Dependency: perl(IPC::Open3) for package: mysql-community-client-5.5.52-2.el7.x86_64
--> Processing Dependency: perl(Getopt::Long) for package: mysql-community-client-5.5.52-2.el7.x86_64
--> Processing Dependency: perl(File::Temp) for package: mysql-community-client-5.5.52-2.el7.x86_64
--> Processing Dependency: perl(Fcntl) for package: mysql-community-client-5.5.52-2.el7.x86_64
--> Processing Dependency: perl(Exporter) for package: mysql-community-client-5.5.52-2.el7.x86_64
--> Processing Dependency: /usr/bin/perl for package: mysql-community-client-5.5.52-2.el7.x86_64
--> Running transaction check
---> Package mariadb-libs.x86_64 1:5.5.44-2.el7 will be obsoleted
---> Package mysql-community-libs.x86_64 0:5.5.52-2.el7 will be obsoleting
--> Processing Dependency: mysql-community-common(x86-64) >= 5.5.8 for package: mysql-community-libs-5.5.52-2.el7.x86_64
---> Package perl.x86_64 4:5.16.3-286.el7 will be installed
--> Processing Dependency: perl-libs = 4:5.16.3-286.el7 for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Scalar::Util) >= 1.10 for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Socket) >= 1.3 for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Carp) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Cwd) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(File::Path) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(File::Spec) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(File::Spec::Functions) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(File::Spec::Unix) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Filter::Util::Call) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Pod::Simple::Search) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Pod::Simple::XHTML) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Scalar::Util) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Socket) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Storable) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Time::HiRes) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(Time::Local) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(constant) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(threads) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl(threads::shared) for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl-libs for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: perl-macros for package: 4:perl-5.16.3-286.el7.x86_64
--> Processing Dependency: libperl.so()(64bit) for package: 4:perl-5.16.3-286.el7.x86_64
---> Package perl-Exporter.noarch 0:5.68-3.el7 will be installed
---> Package perl-File-Temp.noarch 0:0.23.01-3.el7 will be installed
---> Package perl-Getopt-Long.noarch 0:2.40-2.el7 will be installed
--> Processing Dependency: perl(Pod::Usage) >= 1.14 for package: perl-Getopt-Long-2.40-2.el7.noarch
--> Processing Dependency: perl(Text::ParseWords) for package: perl-Getopt-Long-2.40-2.el7.noarch
--> Running transaction check
---> Package mysql-community-common.x86_64 0:5.5.52-2.el7 will be installed
---> Package perl-Carp.noarch 0:1.26-244.el7 will be installed
---> Package perl-File-Path.noarch 0:2.09-2.el7 will be installed
---> Package perl-Filter.x86_64 0:1.49-3.el7 will be installed
---> Package perl-PathTools.x86_64 0:3.40-5.el7 will be installed
---> Package perl-Pod-Simple.noarch 1:3.28-4.el7 will be installed
--> Processing Dependency: perl(Pod::Escapes) >= 1.04 for package: 1:perl-Pod-Simple-3.28-4.el7.noarch
--> Processing Dependency: perl(Encode) for package: 1:perl-Pod-Simple-3.28-4.el7.noarch
---> Package perl-Pod-Usage.noarch 0:1.63-3.el7 will be installed
--> Processing Dependency: perl(Pod::Text) >= 3.15 for package: perl-Pod-Usage-1.63-3.el7.noarch
--> Processing Dependency: perl-Pod-Perldoc for package: perl-Pod-Usage-1.63-3.el7.noarch
---> Package perl-Scalar-List-Utils.x86_64 0:1.27-248.el7 will be installed
---> Package perl-Socket.x86_64 0:2.010-3.el7 will be installed
---> Package perl-Storable.x86_64 0:2.45-3.el7 will be installed
---> Package perl-Text-ParseWords.noarch 0:3.29-4.el7 will be installed
---> Package perl-Time-HiRes.x86_64 4:1.9725-3.el7 will be installed
---> Package perl-Time-Local.noarch 0:1.2300-2.el7 will be installed
---> Package perl-constant.noarch 0:1.27-2.el7 will be installed
---> Package perl-libs.x86_64 4:5.16.3-286.el7 will be installed
---> Package perl-macros.x86_64 4:5.16.3-286.el7 will be installed
---> Package perl-threads.x86_64 0:1.87-4.el7 will be installed
---> Package perl-threads-shared.x86_64 0:1.43-6.el7 will be installed
--> Running transaction check
---> Package perl-Encode.x86_64 0:2.51-7.el7 will be installed
---> Package perl-Pod-Escapes.noarch 1:1.04-286.el7 will be installed
---> Package perl-Pod-Perldoc.noarch 0:3.20-4.el7 will be installed
--> Processing Dependency: perl(HTTP::Tiny) for package: perl-Pod-Perldoc-3.20-4.el7.noarch
--> Processing Dependency: perl(parent) for package: perl-Pod-Perldoc-3.20-4.el7.noarch
---> Package perl-podlators.noarch 0:2.5.1-3.el7 will be installed
--> Running transaction check
---> Package perl-HTTP-Tiny.noarch 0:0.033-3.el7 will be installed
---> Package perl-parent.noarch 1:0.225-244.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package         Arch   Version          Repository                        Size
================================================================================
Installing:
 mysql-community-client
                 x86_64 5.5.52-2.el7     mysql55-community                 16 M
 mysql-community-libs
                 x86_64 5.5.52-2.el7     mysql55-community                1.8 M
     replacing  mariadb-libs.x86_64 1:5.5.44-2.el7
Installing for dependencies:
 mysql-community-common
                 x86_64 5.5.52-2.el7     mysql55-community                235 k
 perl            x86_64 4:5.16.3-286.el7 rhui-REGION-rhel-server-releases 8.0 M
 perl-Carp       noarch 1.26-244.el7     rhui-REGION-rhel-server-releases  19 k
 perl-Encode     x86_64 2.51-7.el7       rhui-REGION-rhel-server-releases 1.5 M
 perl-Exporter   noarch 5.68-3.el7       rhui-REGION-rhel-server-releases  28 k
 perl-File-Path  noarch 2.09-2.el7       rhui-REGION-rhel-server-releases  27 k
 perl-File-Temp  noarch 0.23.01-3.el7    rhui-REGION-rhel-server-releases  56 k
 perl-Filter     x86_64 1.49-3.el7       rhui-REGION-rhel-server-releases  76 k
 perl-Getopt-Long
                 noarch 2.40-2.el7       rhui-REGION-rhel-server-releases  56 k
 perl-HTTP-Tiny  noarch 0.033-3.el7      rhui-REGION-rhel-server-releases  38 k
 perl-PathTools  x86_64 3.40-5.el7       rhui-REGION-rhel-server-releases  83 k
 perl-Pod-Escapes
                 noarch 1:1.04-286.el7   rhui-REGION-rhel-server-releases  50 k
 perl-Pod-Perldoc
                 noarch 3.20-4.el7       rhui-REGION-rhel-server-releases  87 k
 perl-Pod-Simple noarch 1:3.28-4.el7     rhui-REGION-rhel-server-releases 216 k
 perl-Pod-Usage  noarch 1.63-3.el7       rhui-REGION-rhel-server-releases  27 k
 perl-Scalar-List-Utils
                 x86_64 1.27-248.el7     rhui-REGION-rhel-server-releases  36 k
 perl-Socket     x86_64 2.010-3.el7      rhui-REGION-rhel-server-releases  49 k
 perl-Storable   x86_64 2.45-3.el7       rhui-REGION-rhel-server-releases  77 k
 perl-Text-ParseWords
                 noarch 3.29-4.el7       rhui-REGION-rhel-server-releases  14 k
 perl-Time-HiRes x86_64 4:1.9725-3.el7   rhui-REGION-rhel-server-releases  45 k
 perl-Time-Local noarch 1.2300-2.el7     rhui-REGION-rhel-server-releases  24 k
 perl-constant   noarch 1.27-2.el7       rhui-REGION-rhel-server-releases  19 k
 perl-libs       x86_64 4:5.16.3-286.el7 rhui-REGION-rhel-server-releases 687 k
 perl-macros     x86_64 4:5.16.3-286.el7 rhui-REGION-rhel-server-releases  43 k
 perl-parent     noarch 1:0.225-244.el7  rhui-REGION-rhel-server-releases  12 k
 perl-podlators  noarch 2.5.1-3.el7      rhui-REGION-rhel-server-releases 112 k
 perl-threads    x86_64 1.87-4.el7       rhui-REGION-rhel-server-releases  49 k
 perl-threads-shared
                 x86_64 1.43-6.el7       rhui-REGION-rhel-server-releases  39 k

Transaction Summary
================================================================================
Install  2 Packages (+28 Dependent packages)

Total download size: 29 M
Is this ok [y/d/N]: y
Downloading packages:
warning: /var/cache/yum/x86_64/7Server/mysql55-community/packages/mysql-community-common-5.5.52-2.el7.x86_64.rpm: Header V3 DSA/SHA1 Signature, key ID 5072e1f5: NOKEY
Public key for mysql-community-common-5.5.52-2.el7.x86_64.rpm is not installed
(1/30): mysql-community-common-5.5.52-2.el7.x86_64.rpm     | 235 kB   00:00
(2/30): mysql-community-libs-5.5.52-2.el7.x86_64.rpm       | 1.8 MB   00:00
(3/30): mysql-community-client-5.5.52-2.el7.x86_64.rpm     |  16 MB   00:00
(4/30): perl-Carp-1.26-244.el7.noarch.rpm                  |  19 kB   00:00
(5/30): perl-Exporter-5.68-3.el7.noarch.rpm                |  28 kB   00:00
(6/30): perl-Encode-2.51-7.el7.x86_64.rpm                  | 1.5 MB   00:00
(7/30): perl-File-Temp-0.23.01-3.el7.noarch.rpm            |  56 kB   00:00
(8/30): perl-5.16.3-286.el7.x86_64.rpm                     | 8.0 MB   00:00
(9/30): perl-File-Path-2.09-2.el7.noarch.rpm               |  27 kB   00:00
(10/30): perl-Getopt-Long-2.40-2.el7.noarch.rpm            |  56 kB   00:00
(11/30): perl-HTTP-Tiny-0.033-3.el7.noarch.rpm             |  38 kB   00:00
(12/30): perl-Filter-1.49-3.el7.x86_64.rpm                 |  76 kB   00:00
(13/30): perl-PathTools-3.40-5.el7.x86_64.rpm              |  83 kB   00:00
(14/30): perl-Pod-Escapes-1.04-286.el7.noarch.rpm          |  50 kB   00:00
(15/30): perl-Pod-Simple-3.28-4.el7.noarch.rpm             | 216 kB   00:00
(16/30): perl-Pod-Perldoc-3.20-4.el7.noarch.rpm            |  87 kB   00:00
(17/30): perl-Scalar-List-Utils-1.27-248.el7.x86_64.rpm    |  36 kB   00:00
(18/30): perl-Storable-2.45-3.el7.x86_64.rpm               |  77 kB   00:00
(19/30): perl-Socket-2.010-3.el7.x86_64.rpm                |  49 kB   00:00
(20/30): perl-Pod-Usage-1.63-3.el7.noarch.rpm              |  27 kB   00:00
(21/30): perl-Text-ParseWords-3.29-4.el7.noarch.rpm        |  14 kB   00:00
(22/30): perl-Time-HiRes-1.9725-3.el7.x86_64.rpm           |  45 kB   00:00
(23/30): perl-Time-Local-1.2300-2.el7.noarch.rpm           |  24 kB   00:00
(24/30): perl-libs-5.16.3-286.el7.x86_64.rpm               | 687 kB   00:00
(25/30): perl-constant-1.27-2.el7.noarch.rpm               |  19 kB   00:00
(26/30): perl-macros-5.16.3-286.el7.x86_64.rpm             |  43 kB   00:00
(27/30): perl-podlators-2.5.1-3.el7.noarch.rpm             | 112 kB   00:00
(28/30): perl-parent-0.225-244.el7.noarch.rpm              |  12 kB   00:00
(29/30): perl-threads-shared-1.43-6.el7.x86_64.rpm         |  39 kB   00:00
(30/30): perl-threads-1.87-4.el7.x86_64.rpm                |  49 kB   00:00
--------------------------------------------------------------------------------
Total                                               21 MB/s |  29 MB  00:01
Retrieving key from file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql
Importing GPG key 0x5072E1F5:
 Userid     : "MySQL Release Engineering <mysql-build@oss.oracle.com>"
 Fingerprint: a4a9 4068 76fc bd3c 4567 70c8 8c71 8d3b 5072 e1f5
 Package    : mysql57-community-release-el7-9.noarch (installed)
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql
Is this ok [y/N]: y
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
Warning: RPMDB altered outside of yum.
  Installing : 1:perl-parent-0.225-244.el7.noarch                          1/31
  Installing : perl-HTTP-Tiny-0.033-3.el7.noarch                           2/31
  Installing : perl-podlators-2.5.1-3.el7.noarch                           3/31
  Installing : perl-Pod-Perldoc-3.20-4.el7.noarch                          4/31
  Installing : 1:perl-Pod-Escapes-1.04-286.el7.noarch                      5/31
  Installing : perl-Text-ParseWords-3.29-4.el7.noarch                      6/31
  Installing : perl-Encode-2.51-7.el7.x86_64                               7/31
  Installing : perl-Pod-Usage-1.63-3.el7.noarch                            8/31
  Installing : 4:perl-libs-5.16.3-286.el7.x86_64                           9/31
  Installing : 4:perl-macros-5.16.3-286.el7.x86_64                        10/31
  Installing : perl-Storable-2.45-3.el7.x86_64                            11/31
  Installing : perl-Exporter-5.68-3.el7.noarch                            12/31
  Installing : perl-constant-1.27-2.el7.noarch                            13/31
  Installing : perl-Time-Local-1.2300-2.el7.noarch                        14/31
  Installing : perl-Socket-2.010-3.el7.x86_64                             15/31
  Installing : perl-Carp-1.26-244.el7.noarch                              16/31
  Installing : 4:perl-Time-HiRes-1.9725-3.el7.x86_64                      17/31
  Installing : perl-PathTools-3.40-5.el7.x86_64                           18/31
  Installing : perl-Scalar-List-Utils-1.27-248.el7.x86_64                 19/31
  Installing : perl-File-Temp-0.23.01-3.el7.noarch                        20/31
  Installing : perl-File-Path-2.09-2.el7.noarch                           21/31
  Installing : perl-threads-shared-1.43-6.el7.x86_64                      22/31
  Installing : perl-threads-1.87-4.el7.x86_64                             23/31
  Installing : perl-Filter-1.49-3.el7.x86_64                              24/31
  Installing : 1:perl-Pod-Simple-3.28-4.el7.noarch                        25/31
  Installing : perl-Getopt-Long-2.40-2.el7.noarch                         26/31
  Installing : 4:perl-5.16.3-286.el7.x86_64                               27/31
  Installing : mysql-community-common-5.5.52-2.el7.x86_64                 28/31
  Installing : mysql-community-libs-5.5.52-2.el7.x86_64                   29/31
  Installing : mysql-community-client-5.5.52-2.el7.x86_64                 30/31
  Erasing    : 1:mariadb-libs-5.5.44-2.el7.x86_64                         31/31
  Verifying  : perl-HTTP-Tiny-0.033-3.el7.noarch                           1/31
  Verifying  : perl-threads-shared-1.43-6.el7.x86_64                       2/31
  Verifying  : perl-Storable-2.45-3.el7.x86_64                             3/31
  Verifying  : mysql-community-common-5.5.52-2.el7.x86_64                  4/31
  Verifying  : perl-Exporter-5.68-3.el7.noarch                             5/31
  Verifying  : perl-constant-1.27-2.el7.noarch                             6/31
  Verifying  : perl-PathTools-3.40-5.el7.x86_64                            7/31
  Verifying  : 4:perl-libs-5.16.3-286.el7.x86_64                           8/31
  Verifying  : 4:perl-macros-5.16.3-286.el7.x86_64                         9/31
  Verifying  : 1:perl-parent-0.225-244.el7.noarch                         10/31
  Verifying  : mysql-community-libs-5.5.52-2.el7.x86_64                   11/31
  Verifying  : 4:perl-5.16.3-286.el7.x86_64                               12/31
  Verifying  : perl-File-Temp-0.23.01-3.el7.noarch                        13/31
  Verifying  : 1:perl-Pod-Simple-3.28-4.el7.noarch                        14/31
  Verifying  : perl-Time-Local-1.2300-2.el7.noarch                        15/31
  Verifying  : perl-Pod-Perldoc-3.20-4.el7.noarch                         16/31
  Verifying  : perl-Socket-2.010-3.el7.x86_64                             17/31
  Verifying  : perl-Carp-1.26-244.el7.noarch                              18/31
  Verifying  : mysql-community-client-5.5.52-2.el7.x86_64                 19/31
  Verifying  : 4:perl-Time-HiRes-1.9725-3.el7.x86_64                      20/31
  Verifying  : perl-Scalar-List-Utils-1.27-248.el7.x86_64                 21/31
  Verifying  : 1:perl-Pod-Escapes-1.04-286.el7.noarch                     22/31
  Verifying  : perl-Pod-Usage-1.63-3.el7.noarch                           23/31
  Verifying  : perl-Encode-2.51-7.el7.x86_64                              24/31
  Verifying  : perl-podlators-2.5.1-3.el7.noarch                          25/31
  Verifying  : perl-Getopt-Long-2.40-2.el7.noarch                         26/31
  Verifying  : perl-File-Path-2.09-2.el7.noarch                           27/31
  Verifying  : perl-threads-1.87-4.el7.x86_64                             28/31
  Verifying  : perl-Filter-1.49-3.el7.x86_64                              29/31
  Verifying  : perl-Text-ParseWords-3.29-4.el7.noarch                     30/31
  Verifying  : 1:mariadb-libs-5.5.44-2.el7.x86_64                         31/31

Installed:
  mysql-community-client.x86_64 0:5.5.52-2.el7
  mysql-community-libs.x86_64 0:5.5.52-2.el7

Dependency Installed:
  mysql-community-common.x86_64 0:5.5.52-2.el7
  perl.x86_64 4:5.16.3-286.el7
  perl-Carp.noarch 0:1.26-244.el7
  perl-Encode.x86_64 0:2.51-7.el7
  perl-Exporter.noarch 0:5.68-3.el7
  perl-File-Path.noarch 0:2.09-2.el7
  perl-File-Temp.noarch 0:0.23.01-3.el7
  perl-Filter.x86_64 0:1.49-3.el7
  perl-Getopt-Long.noarch 0:2.40-2.el7
  perl-HTTP-Tiny.noarch 0:0.033-3.el7
  perl-PathTools.x86_64 0:3.40-5.el7
  perl-Pod-Escapes.noarch 1:1.04-286.el7
  perl-Pod-Perldoc.noarch 0:3.20-4.el7
  perl-Pod-Simple.noarch 1:3.28-4.el7
  perl-Pod-Usage.noarch 0:1.63-3.el7
  perl-Scalar-List-Utils.x86_64 0:1.27-248.el7
  perl-Socket.x86_64 0:2.010-3.el7
  perl-Storable.x86_64 0:2.45-3.el7
  perl-Text-ParseWords.noarch 0:3.29-4.el7
  perl-Time-HiRes.x86_64 4:1.9725-3.el7
  perl-Time-Local.noarch 0:1.2300-2.el7
  perl-constant.noarch 0:1.27-2.el7
  perl-libs.x86_64 4:5.16.3-286.el7
  perl-macros.x86_64 4:5.16.3-286.el7
  perl-parent.noarch 1:0.225-244.el7
  perl-podlators.noarch 0:2.5.1-3.el7
  perl-threads.x86_64 0:1.87-4.el7
  perl-threads-shared.x86_64 0:1.43-6.el7

Replaced:
  mariadb-libs.x86_64 1:5.5.44-2.el7

Complete!
```

## Install mysql-community-server

### On: ec2-54-196-83-198.compute-1.amazonaws.com    (Cloudera Manager server)
### On: ec2-54-166-252-89.compute-1.amazonaws.com    (Work node #1)


```
[root@ip-172-31-63-2 yum.repos.d]# yum install mysql-community-server
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
Resolving Dependencies
--> Running transaction check
---> Package mysql-community-server.x86_64 0:5.5.52-2.el7 will be installed
--> Processing Dependency: perl(Data::Dumper) for package: mysql-community-server-5.5.52-2.el7.x86_64
--> Processing Dependency: perl(DBI) for package: mysql-community-server-5.5.52-2.el7.x86_64
--> Processing Dependency: libaio.so.1(LIBAIO_0.4)(64bit) for package: mysql-community-server-5.5.52-2.el7.x86_64
--> Processing Dependency: libaio.so.1(LIBAIO_0.1)(64bit) for package: mysql-community-server-5.5.52-2.el7.x86_64
--> Processing Dependency: libaio.so.1()(64bit) for package: mysql-community-server-5.5.52-2.el7.x86_64
--> Running transaction check
---> Package libaio.x86_64 0:0.3.109-13.el7 will be installed
---> Package perl-DBI.x86_64 0:1.627-4.el7 will be installed
--> Processing Dependency: perl(RPC::PlClient) >= 0.2000 for package: perl-DBI-1.627-4.el7.x86_64
--> Processing Dependency: perl(RPC::PlServer) >= 0.2001 for package: perl-DBI-1.627-4.el7.x86_64
---> Package perl-Data-Dumper.x86_64 0:2.145-3.el7 will be installed
--> Running transaction check
---> Package perl-PlRPC.noarch 0:0.2020-14.el7 will be installed
--> Processing Dependency: perl(Net::Daemon) >= 0.13 for package: perl-PlRPC-0.2020-14.el7.noarch
--> Processing Dependency: perl(Compress::Zlib) for package: perl-PlRPC-0.2020-14.el7.noarch
--> Processing Dependency: perl(Net::Daemon::Log) for package: perl-PlRPC-0.2020-14.el7.noarch
--> Processing Dependency: perl(Net::Daemon::Test) for package: perl-PlRPC-0.2020-14.el7.noarch
--> Running transaction check
---> Package perl-IO-Compress.noarch 0:2.061-2.el7 will be installed
--> Processing Dependency: perl(Compress::Raw::Bzip2) >= 2.061 for package: perl-IO-Compress-2.061-2.el7.noarch
--> Processing Dependency: perl(Compress::Raw::Zlib) >= 2.061 for package: perl-IO-Compress-2.061-2.el7.noarch
---> Package perl-Net-Daemon.noarch 0:0.48-5.el7 will be installed
--> Running transaction check
---> Package perl-Compress-Raw-Bzip2.x86_64 0:2.061-3.el7 will be installed
---> Package perl-Compress-Raw-Zlib.x86_64 1:2.061-4.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package           Arch   Version        Repository                        Size
================================================================================
Installing:
 mysql-community-server
                   x86_64 5.5.52-2.el7   mysql55-community                 45 M
Installing for dependencies:
 libaio            x86_64 0.3.109-13.el7 rhui-REGION-rhel-server-releases  24 k
 perl-Compress-Raw-Bzip2
                   x86_64 2.061-3.el7    rhui-REGION-rhel-server-releases  32 k
 perl-Compress-Raw-Zlib
                   x86_64 1:2.061-4.el7  rhui-REGION-rhel-server-releases  57 k
 perl-DBI          x86_64 1.627-4.el7    rhui-REGION-rhel-server-releases 802 k
 perl-Data-Dumper  x86_64 2.145-3.el7    rhui-REGION-rhel-server-releases  47 k
 perl-IO-Compress  noarch 2.061-2.el7    rhui-REGION-rhel-server-releases 260 k
 perl-Net-Daemon   noarch 0.48-5.el7     rhui-REGION-rhel-server-releases  51 k
 perl-PlRPC        noarch 0.2020-14.el7  rhui-REGION-rhel-server-releases  36 k

Transaction Summary
================================================================================
Install  1 Package (+8 Dependent packages)

Total download size: 47 M
Installed size: 193 M
Is this ok [y/d/N]: y
Downloading packages:
(1/9): libaio-0.3.109-13.el7.x86_64.rpm                    |  24 kB   00:00
(2/9): perl-Compress-Raw-Bzip2-2.061-3.el7.x86_64.rpm      |  32 kB   00:00
(3/9): perl-Compress-Raw-Zlib-2.061-4.el7.x86_64.rpm       |  57 kB   00:00
(4/9): perl-DBI-1.627-4.el7.x86_64.rpm                     | 802 kB   00:00
(5/9): perl-Data-Dumper-2.145-3.el7.x86_64.rpm             |  47 kB   00:00
(6/9): perl-IO-Compress-2.061-2.el7.noarch.rpm             | 260 kB   00:00
(7/9): perl-Net-Daemon-0.48-5.el7.noarch.rpm               |  51 kB   00:00
(8/9): perl-PlRPC-0.2020-14.el7.noarch.rpm                 |  36 kB   00:00
(9/9): mysql-community-server-5.5.52-2.el7.x86_64.rpm      |  45 MB   00:00
--------------------------------------------------------------------------------
Total                                               66 MB/s |  47 MB  00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : perl-Data-Dumper-2.145-3.el7.x86_64                          1/9
  Installing : libaio-0.3.109-13.el7.x86_64                                 2/9
  Installing : 1:perl-Compress-Raw-Zlib-2.061-4.el7.x86_64                  3/9
  Installing : perl-Net-Daemon-0.48-5.el7.noarch                            4/9
  Installing : perl-Compress-Raw-Bzip2-2.061-3.el7.x86_64                   5/9
  Installing : perl-IO-Compress-2.061-2.el7.noarch                          6/9
  Installing : perl-PlRPC-0.2020-14.el7.noarch                              7/9
  Installing : perl-DBI-1.627-4.el7.x86_64                                  8/9
  Installing : mysql-community-server-5.5.52-2.el7.x86_64                   9/9
  Verifying  : perl-Compress-Raw-Bzip2-2.061-3.el7.x86_64                   1/9
  Verifying  : perl-Net-Daemon-0.48-5.el7.noarch                            2/9
  Verifying  : perl-Data-Dumper-2.145-3.el7.x86_64                          3/9
  Verifying  : perl-IO-Compress-2.061-2.el7.noarch                          4/9
  Verifying  : 1:perl-Compress-Raw-Zlib-2.061-4.el7.x86_64                  5/9
  Verifying  : mysql-community-server-5.5.52-2.el7.x86_64                   6/9
  Verifying  : perl-DBI-1.627-4.el7.x86_64                                  7/9
  Verifying  : libaio-0.3.109-13.el7.x86_64                                 8/9
  Verifying  : perl-PlRPC-0.2020-14.el7.noarch                              9/9

Installed:
  mysql-community-server.x86_64 0:5.5.52-2.el7

Dependency Installed:
  libaio.x86_64 0:0.3.109-13.el7
  perl-Compress-Raw-Bzip2.x86_64 0:2.061-3.el7
  perl-Compress-Raw-Zlib.x86_64 1:2.061-4.el7
  perl-DBI.x86_64 0:1.627-4.el7
  perl-Data-Dumper.x86_64 0:2.145-3.el7
  perl-IO-Compress.noarch 0:2.061-2.el7
  perl-Net-Daemon.noarch 0:0.48-5.el7
  perl-PlRPC.noarch 0:0.2020-14.el7

Complete!
```

# Step 2 is false

When I got to Step 5 I found that I needed to add these items to MASTER:

```
[mysqld]
log-bin=mysql-bin
server-id=1
```

and I needed to add this item to SLAVE:

```
[mysqld]
server-id=2
```

then restart mysql.

# Step 3

mgr # systemctl enable mysqld
Created symlink from /etc/systemd/system/mysql.service to /usr/lib/systemd/system/mysqld.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/mysqld.service to /usr/lib/systemd/system/mysqld.service.
mgr # service mysqld start
Redirecting to /bin/systemctl start  mysqld.service
mgr # service mysqld status
Redirecting to /bin/systemctl status  mysqld.service
● mysqld.service - MySQL Community Server
   Loaded: loaded (/usr/lib/systemd/system/mysqld.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2016-09-19 21:30:19 EDT; 9s ago
  Process: 17457 ExecStartPost=/usr/bin/mysql-systemd-start post (code=exited, status=0/SUCCESS)
  Process: 17401 ExecStartPre=/usr/bin/mysql-systemd-start pre (code=exited, status=0/SUCCESS)
 Main PID: 17456 (mysqld_safe)
   CGroup: /system.slice/mysqld.service
           ├─17456 /bin/sh /usr/bin/mysqld_safe
           └─17600 /usr/sbin/mysqld --basedir=/usr --datadir=/var/lib/mysql -...

Sep 19 21:30:17 ip-172-31-63-2.ec2.internal systemd[1]: Starting MySQL Commun...
Sep 19 21:30:17 ip-172-31-63-2.ec2.internal mysql-systemd-start[17401]: 16091...
Sep 19 21:30:17 ip-172-31-63-2.ec2.internal mysql-systemd-start[17401]: 16091...
Sep 19 21:30:17 ip-172-31-63-2.ec2.internal mysql-systemd-start[17401]: PLEAS...
Sep 19 21:30:17 ip-172-31-63-2.ec2.internal mysql-systemd-start[17401]: To do...
Sep 19 21:30:17 ip-172-31-63-2.ec2.internal mysqld_safe[17456]: 160919 21:30:...
Sep 19 21:30:17 ip-172-31-63-2.ec2.internal mysqld_safe[17456]: 160919 21:30:...
Sep 19 21:30:19 ip-172-31-63-2.ec2.internal systemd[1]: Started MySQL Communi...
Hint: Some lines were ellipsized, use -l to show in full.

# Step 4

```
mgr # /usr/bin/mysql_secure_installation




NOTE: RUNNING ALL PARTS OF THIS SCRIPT IS RECOMMENDED FOR ALL MySQL
      SERVERS IN PRODUCTION USE!  PLEASE READ EACH STEP CAREFULLY!


In order to log into MySQL to secure it, we'll need the current
password for the root user.  If you've just installed MySQL, and
you haven't set the root password yet, the password will be blank,
so you should just press enter here.

Enter current password for root (enter for none):
OK, successfully used password, moving on...

Setting the root password ensures that nobody can log into the MySQL
root user without the proper authorisation.

Set root password? [Y/n] Y
New password: [cloudera]
Re-enter new password: [cloudera]
Password updated successfully!
Reloading privilege tables..
 ... Success!


By default, a MySQL installation has an anonymous user, allowing anyone
to log into MySQL without having to have a user account created for
them.  This is intended only for testing, and to make the installation
go a bit smoother.  You should remove them before moving into a
production environment.

Remove anonymous users? [Y/n] Y
 ... Success!

Normally, root should only be allowed to connect from 'localhost'.  This
ensures that someone cannot guess at the root password from the network.

Disallow root login remotely? [Y/n] n
 ... skipping.

By default, MySQL comes with a database named 'test' that anyone can
access.  This is also intended only for testing, and should be removed
before moving into a production environment.

Remove test database and access to it? [Y/n] Y
 - Dropping test database...
 ... Success!
 - Removing privileges on test database...
 ... Success!

Reloading the privilege tables will ensure that all changes made so far
will take effect immediately.

Reload privilege tables now? [Y/n] Y
 ... Success!

Cleaning up...



All done!  If you've completed all of the above steps, your MySQL
installation should now be secure.

Thanks for using MySQL!
```

# Step 5

##First terminal session:

```
# mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 5.5.52 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> grant replication slave on *.* to 'root'@'ec2-54-166-252-89.compute-1.amazonaws.com' identified by 'cloudera';
Query OK, 0 rows affected (0.00 sec)

mysql> set global binlog_format = 'ROW';
Query OK, 0 rows affected (0.00 sec)

mysql> flush tables with read lock;
Query OK, 0 rows affected (0.00 sec)
```

## Second terminal session

```
mysql> show master status;
+------------------+----------+--------------+------------------+
| File             | Position | Binlog_Do_DB | Binlog_Ignore_DB |
+------------------+----------+--------------+------------------+
| mysql-bin.000001 |      107 |              |                  |
+------------------+----------+--------------+------------------+
1 row in set (0.00 sec)
```

## First session `UNLOCK TABLES` and then exit both sessions
