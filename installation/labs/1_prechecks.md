# <center> Linux Configuration

## Set up /etc/hosts with the following additions on all 5 nodes:

```
54.196.83.198   ec2-54-196-83-198.compute-1.amazonaws.com
54.166.252.89   ec2-54-166-252-89.compute-1.amazonaws.com
184.72.132.15   ec2-184-72-132-15.compute-1.amazonaws.com
184.72.127.37   ec2-184-72-127-37.compute-1.amazonaws.com
184.72.136.222  ec2-184-72-136-222.compute-1.amazonaws.com
```

## Added the following line to the end of /etc/sysctl.conf

```
vm.swappiness = 1

## Activated and confirmed setting on all 5 nodes:

# sysctl -p
vm.swappiness = 1
# cat /proc/sys/vm/swappiness
1
```

## Confirmed nscd and ntp were not installed.

Ran the following script to 

* Confirm contents of /etc/hosts
* Confirm contents of /etc/sysctl.conf
* Test forward and reverse host lookups
* Install and enable the nscd service
* Install and enable the ntpd service

```
cat /etc/hosts
cat /etc/sysctl.conf
cat /proc/sys/vm/swappiness
getent hosts ec2-184-72-136-222.compute-1.amazonaws.com
getent hosts 184.72.136.222
getent hosts ec2-184-72-127-37.compute-1.amazonaws.com
getent hosts 184.72.127.37
getent hosts ec2-184-72-132-15.compute-1.amazonaws.com
getent hosts 184.72.132.15
getent hosts ec2-54-166-252-89.compute-1.amazonaws.com
getent hosts 54.166.252.89
getent hosts ec2-54-196-83-198.compute-1.amazonaws.com
getent hosts 54.196.83.198
yum install nscd
systemctl enable nscd
service nscd start
service nscd status
yum install ntp
systemctl enable ntpd
service ntpd start
service ntpd status
```

## Sample output of script:

```
[root@ip-172-31-63-4 ec2-user]# ./t1.sh
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
54.196.83.198   ec2-54-196-83-198.compute-1.amazonaws.com
54.166.252.89   ec2-54-166-252-89.compute-1.amazonaws.com
184.72.132.15   ec2-184-72-132-15.compute-1.amazonaws.com
184.72.127.37   ec2-184-72-127-37.compute-1.amazonaws.com
184.72.136.222  ec2-184-72-136-222.compute-1.amazonaws.com
# System default settings live in /usr/lib/sysctl.d/00-system.conf.
# To override those settings, enter new settings here, or in an /etc/sysctl.d/<name>.conf file
#
# For more information, see sysctl.conf(5) and sysctl.d(5).
vm.swappiness = 1
1
184.72.136.222  ec2-184-72-136-222.compute-1.amazonaws.com
184.72.136.222  ec2-184-72-136-222.compute-1.amazonaws.com
184.72.127.37   ec2-184-72-127-37.compute-1.amazonaws.com
184.72.127.37   ec2-184-72-127-37.compute-1.amazonaws.com
184.72.132.15   ec2-184-72-132-15.compute-1.amazonaws.com
184.72.132.15   ec2-184-72-132-15.compute-1.amazonaws.com
54.166.252.89   ec2-54-166-252-89.compute-1.amazonaws.com
54.166.252.89   ec2-54-166-252-89.compute-1.amazonaws.com
54.196.83.198   ec2-54-196-83-198.compute-1.amazonaws.com
54.196.83.198   ec2-54-196-83-198.compute-1.amazonaws.com
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
rhui-REGION-client-config-server-7                       | 2.9 kB     00:00
rhui-REGION-rhel-server-releases                         | 3.5 kB     00:00
rhui-REGION-rhel-server-rh-common                        | 3.8 kB     00:00
(1/7): rhui-REGION-client-config-server-7/x86_64/primary_d | 5.5 kB   00:00
(2/7): rhui-REGION-rhel-server-rh-common/7Server/x86_64/gr |  104 B   00:00
(3/7): rhui-REGION-rhel-server-releases/7Server/x86_64/gro | 699 kB   00:00
(4/7): rhui-REGION-rhel-server-releases/7Server/x86_64/upd | 1.4 MB   00:00
(5/7): rhui-REGION-rhel-server-rh-common/7Server/x86_64/pr | 110 kB   00:00
(6/7): rhui-REGION-rhel-server-rh-common/7Server/x86_64/up |  29 kB   00:00
(7/7): rhui-REGION-rhel-server-releases/7Server/x86_64/pri |  27 MB   00:00
Resolving Dependencies
--> Running transaction check
---> Package nscd.x86_64 0:2.17-106.el7_2.8 will be installed
--> Processing Dependency: glibc = 2.17-106.el7_2.8 for package: nscd-2.17-106.el7_2.8.x86_64
--> Running transaction check
---> Package glibc.x86_64 0:2.17-105.el7 will be updated
--> Processing Dependency: glibc = 2.17-105.el7 for package: glibc-common-2.17-105.el7.x86_64
---> Package glibc.x86_64 0:2.17-106.el7_2.8 will be an update
--> Running transaction check
---> Package glibc-common.x86_64 0:2.17-105.el7 will be updated
---> Package glibc-common.x86_64 0:2.17-106.el7_2.8 will be an update
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package      Arch   Version             Repository                        Size
================================================================================
Installing:
 nscd         x86_64 2.17-106.el7_2.8    rhui-REGION-rhel-server-releases 261 k
Updating for dependencies:
 glibc        x86_64 2.17-106.el7_2.8    rhui-REGION-rhel-server-releases 3.6 M
 glibc-common x86_64 2.17-106.el7_2.8    rhui-REGION-rhel-server-releases  11 M

Transaction Summary
================================================================================
Install  1 Package
Upgrade             ( 2 Dependent packages)

Total download size: 15 M
Is this ok [y/d/N]: y
Downloading packages:
Delta RPMs disabled because /usr/bin/applydeltarpm not installed.
(1/3): nscd-2.17-106.el7_2.8.x86_64.rpm                    | 261 kB   00:00
(2/3): glibc-2.17-106.el7_2.8.x86_64.rpm                   | 3.6 MB   00:00
(3/3): glibc-common-2.17-106.el7_2.8.x86_64.rpm            |  11 MB   00:00
--------------------------------------------------------------------------------
Total                                               31 MB/s |  15 MB  00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Updating   : glibc-common-2.17-106.el7_2.8.x86_64                         1/5
  Updating   : glibc-2.17-106.el7_2.8.x86_64                                2/5
  Installing : nscd-2.17-106.el7_2.8.x86_64                                 3/5
  Cleanup    : glibc-common-2.17-105.el7.x86_64                             4/5
  Cleanup    : glibc-2.17-105.el7.x86_64                                    5/5
  Verifying  : glibc-2.17-106.el7_2.8.x86_64                                1/5
  Verifying  : nscd-2.17-106.el7_2.8.x86_64                                 2/5
  Verifying  : glibc-common-2.17-106.el7_2.8.x86_64                         3/5
  Verifying  : glibc-2.17-105.el7.x86_64                                    4/5
  Verifying  : glibc-common-2.17-105.el7.x86_64                             5/5

Installed:
  nscd.x86_64 0:2.17-106.el7_2.8

Dependency Updated:
  glibc.x86_64 0:2.17-106.el7_2.8     glibc-common.x86_64 0:2.17-106.el7_2.8

Complete!
Created symlink from /etc/systemd/system/multi-user.target.wants/nscd.service to /usr/lib/systemd/system/nscd.service.
Created symlink from /etc/systemd/system/sockets.target.wants/nscd.socket to /usr/lib/systemd/system/nscd.socket.
Redirecting to /bin/systemctl start  nscd.service
Redirecting to /bin/systemctl status  nscd.service
● nscd.service - Name Service Cache Daemon
   Loaded: loaded (/usr/lib/systemd/system/nscd.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2016-09-19 19:55:15 EDT; 17ms ago
  Process: 16617 ExecStart=/usr/sbin/nscd $NSCD_OPTIONS (code=exited, status=0/SUCCESS)
 Main PID: 16618 (nscd)
   CGroup: /system.slice/nscd.service
           └─16618 /usr/sbin/nscd

Sep 19 19:55:15 ip-172-31-63-4.ec2.internal nscd[16618]: 16618 monitoring fil...
Sep 19 19:55:15 ip-172-31-63-4.ec2.internal nscd[16618]: 16618 monitoring dir...
Sep 19 19:55:15 ip-172-31-63-4.ec2.internal nscd[16618]: 16618 monitoring fil...
Sep 19 19:55:15 ip-172-31-63-4.ec2.internal nscd[16618]: 16618 monitoring dir...
Sep 19 19:55:15 ip-172-31-63-4.ec2.internal nscd[16618]: 16618 monitoring fil...
Sep 19 19:55:15 ip-172-31-63-4.ec2.internal nscd[16618]: 16618 monitoring dir...
Sep 19 19:55:15 ip-172-31-63-4.ec2.internal nscd[16618]: 16618 disabled inoti...
Sep 19 19:55:15 ip-172-31-63-4.ec2.internal nscd[16618]: 16618 stat failed fo...
Sep 19 19:55:15 ip-172-31-63-4.ec2.internal nscd[16618]: 16618 Access Vector ...
Sep 19 19:55:15 ip-172-31-63-4.ec2.internal systemd[1]: Started Name Service ...
Hint: Some lines were ellipsized, use -l to show in full.
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
Resolving Dependencies
--> Running transaction check
---> Package ntp.x86_64 0:4.2.6p5-22.el7_2.2 will be installed
--> Processing Dependency: ntpdate = 4.2.6p5-22.el7_2.2 for package: ntp-4.2.6p5-22.el7_2.2.x86_64
--> Processing Dependency: libopts.so.25()(64bit) for package: ntp-4.2.6p5-22.el7_2.2.x86_64
--> Running transaction check
---> Package autogen-libopts.x86_64 0:5.18-5.el7 will be installed
---> Package ntpdate.x86_64 0:4.2.6p5-22.el7_2.2 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package       Arch   Version            Repository                        Size
================================================================================
Installing:
 ntp           x86_64 4.2.6p5-22.el7_2.2 rhui-REGION-rhel-server-releases 544 k
Installing for dependencies:
 autogen-libopts
               x86_64 5.18-5.el7         rhui-REGION-rhel-server-releases  66 k
 ntpdate       x86_64 4.2.6p5-22.el7_2.2 rhui-REGION-rhel-server-releases  84 k

Transaction Summary
================================================================================
Install  1 Package (+2 Dependent packages)

Total download size: 694 k
Installed size: 1.6 M
Is this ok [y/d/N]: y
Downloading packages:
(1/3): ntp-4.2.6p5-22.el7_2.2.x86_64.rpm                   | 544 kB   00:00
(2/3): ntpdate-4.2.6p5-22.el7_2.2.x86_64.rpm               |  84 kB   00:00
(3/3): autogen-libopts-5.18-5.el7.x86_64.rpm               |  66 kB   00:00
--------------------------------------------------------------------------------
Total                                              2.3 MB/s | 694 kB  00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : autogen-libopts-5.18-5.el7.x86_64                            1/3
  Installing : ntpdate-4.2.6p5-22.el7_2.2.x86_64                            2/3
  Installing : ntp-4.2.6p5-22.el7_2.2.x86_64                                3/3
  Verifying  : ntpdate-4.2.6p5-22.el7_2.2.x86_64                            1/3
  Verifying  : ntp-4.2.6p5-22.el7_2.2.x86_64                                2/3
  Verifying  : autogen-libopts-5.18-5.el7.x86_64                            3/3

Installed:
  ntp.x86_64 0:4.2.6p5-22.el7_2.2

Dependency Installed:
  autogen-libopts.x86_64 0:5.18-5.el7    ntpdate.x86_64 0:4.2.6p5-22.el7_2.2

Complete!
Created symlink from /etc/systemd/system/multi-user.target.wants/ntpd.service to /usr/lib/systemd/system/ntpd.service.
Redirecting to /bin/systemctl start  ntpd.service
Redirecting to /bin/systemctl status  ntpd.service
● ntpd.service - Network Time Service
   Loaded: loaded (/usr/lib/systemd/system/ntpd.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2016-09-19 19:55:19 EDT; 17ms ago
  Process: 16720 ExecStart=/usr/sbin/ntpd -u ntp:ntp $OPTIONS (code=exited, status=0/SUCCESS)
 Main PID: 16721 (ntpd)
   CGroup: /system.slice/ntpd.service
           └─16721 /usr/sbin/ntpd -u ntp:ntp -g

Sep 19 19:55:19 ip-172-31-63-4.ec2.internal ntpd[16721]: 0.0.0.0 c01d 0d kern...
Sep 19 19:55:19 ip-172-31-63-4.ec2.internal ntpd[16721]: ntp_io: estimated ma...
Sep 19 19:55:19 ip-172-31-63-4.ec2.internal ntpd[16721]: Listen and drop on 0...
Sep 19 19:55:19 ip-172-31-63-4.ec2.internal ntpd[16721]: Listen and drop on 1...
Sep 19 19:55:19 ip-172-31-63-4.ec2.internal ntpd[16721]: Listen normally on 2...
Sep 19 19:55:19 ip-172-31-63-4.ec2.internal ntpd[16721]: Listen normally on 3...
Sep 19 19:55:19 ip-172-31-63-4.ec2.internal ntpd[16721]: Listen normally on 4...
Sep 19 19:55:19 ip-172-31-63-4.ec2.internal ntpd[16721]: Listen normally on 5...
Sep 19 19:55:19 ip-172-31-63-4.ec2.internal ntpd[16721]: Listening on routing...
Sep 19 19:55:19 ip-172-31-63-4.ec2.internal systemd[1]: Started Network Time ...
Hint: Some lines were ellipsized, use -l to show in full.
```


