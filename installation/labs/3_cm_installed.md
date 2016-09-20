# <center> Cloudera Manager installation

## Step 1 - set up the cloudera-manager.repo

```
mgr # cat cloudera-manager.repo
[cloudera-manager]
# Packages for Cloudera Manager, Version 5, on RedHat or CentOS 7 x86_64        
name=Cloudera Manager
baseurl=https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5/
gpgkey =https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/RPM-GPG-KEY-cloudera
gpgcheck = 1
```

## Step 2 - install the Oracle Java SDK from Cloudera distribution

```
mgr # yum install oracle-j2sdk1.7
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
cloudera-manager                                         |  951 B     00:00
cloudera-manager/primary                                   | 4.3 kB   00:00
cloudera-manager                                                            7/7
Resolving Dependencies
--> Running transaction check
---> Package oracle-j2sdk1.7.x86_64 0:1.7.0+update67-1 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package             Arch       Version              Repository            Size
================================================================================
Installing:
 oracle-j2sdk1.7     x86_64     1.7.0+update67-1     cloudera-manager     135 M

Transaction Summary
================================================================================
Install  1 Package

Total download size: 135 M
Installed size: 279 M
Is this ok [y/d/N]: y
Downloading packages:
warning: /var/cache/yum/x86_64/7Server/cloudera-manager/packages/oracle-j2sdk1.7-1.7.0+update67-1.x86_64.rpm: Header V4 DSA/SHA1 Signature, key ID e8f86acd: NOKEY
Public key for oracle-j2sdk1.7-1.7.0+update67-1.x86_64.rpm is not installed
oracle-j2sdk1.7-1.7.0+update67-1.x86_64.rpm                | 135 MB   00:01
Retrieving key from https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/RPM-GPG-KEY-cloudera
Importing GPG key 0xE8F86ACD:
 Userid     : "Yum Maintainer <webmaster@cloudera.com>"
 Fingerprint: 5f14 d39e f068 1aca 6f04 4a43 f90c 0d8f e8f8 6acd
 From       : https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/RPM-GPG-KEY-cloudera
Is this ok [y/N]: y
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : oracle-j2sdk1.7-1.7.0+update67-1.x86_64                      1/1
  Verifying  : oracle-j2sdk1.7-1.7.0+update67-1.x86_64                      1/1

Installed:
  oracle-j2sdk1.7.x86_64 0:1.7.0+update67-1

Complete!
```

## Step 3 - install cloudera-manager-daemons and cloudera-manager-server

```
mgr # yum install cloudera-manager-daemons cloudera-manager-server
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
Resolving Dependencies
--> Running transaction check
---> Package cloudera-manager-daemons.x86_64 0:5.8.1-1.cm581.p0.7.el7 will be installed
---> Package cloudera-manager-server.x86_64 0:5.8.1-1.cm581.p0.7.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                  Arch   Version                 Repository        Size
================================================================================
Installing:
 cloudera-manager-daemons x86_64 5.8.1-1.cm581.p0.7.el7  cloudera-manager 515 M
 cloudera-manager-server  x86_64 5.8.1-1.cm581.p0.7.el7  cloudera-manager 8.3 k

Transaction Summary
================================================================================
Install  2 Packages

Total download size: 515 M
Installed size: 679 M
Is this ok [y/d/N]: y
Downloading packages:
(1/2): cloudera-manager-server-5.8.1-1.cm581.p0.7.el7.x86_ | 8.3 kB   00:00
(2/2): cloudera-manager-daemons-5.8.1-1.cm581.p0.7.el7.x86 | 515 MB   00:08
--------------------------------------------------------------------------------
Total                                               64 MB/s | 515 MB  00:08
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : cloudera-manager-daemons-5.8.1-1.cm581.p0.7.el7.x86_64       1/2
  Installing : cloudera-manager-server-5.8.1-1.cm581.p0.7.el7.x86_64        2/2
  Verifying  : cloudera-manager-server-5.8.1-1.cm581.p0.7.el7.x86_64        1/2
  Verifying  : cloudera-manager-daemons-5.8.1-1.cm581.p0.7.el7.x86_64       2/2

Installed:
  cloudera-manager-daemons.x86_64 0:5.8.1-1.cm581.p0.7.el7
  cloudera-manager-server.x86_64 0:5.8.1-1.cm581.p0.7.el7

Complete!
```

## Step 4 - start the Cloudera Manager Server
