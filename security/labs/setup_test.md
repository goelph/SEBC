# <center> Kerberos setup

## Install Kerberos server on CM server

```
# yum install krb5-server krb5-libs krb5-auth-dialog krb5-workstation

Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
cloudera-manager                                         |  951 B     00:00
mysql-connectors-community                               | 2.5 kB     00:00
mysql-tools-community                                    | 2.5 kB     00:00
mysql55-community                                        | 2.5 kB     00:00
rhui-REGION-client-config-server-7                       | 2.9 kB     00:00
rhui-REGION-rhel-server-releases                         | 3.5 kB     00:00
rhui-REGION-rhel-server-rh-common                        | 3.8 kB     00:00
(1/2): rhui-REGION-rhel-server-releases/7Server/x86_64/upd | 1.4 MB   00:00
(2/2): rhui-REGION-rhel-server-releases/7Server/x86_64/pri |  27 MB   00:00
Package krb5-libs-1.13.2-12.el7_2.x86_64 already installed and latest version
No package krb5-auth-dialog available.
Resolving Dependencies
--> Running transaction check
---> Package krb5-server.x86_64 0:1.13.2-12.el7_2 will be installed
rhui-REGION-rhel-server-releases/7Server/x86_64/filelist |  18 MB     00:00
--> Processing Dependency: /usr/share/dict/words for package: krb5-server-1.13.2-12.el7_2.x86_64
--> Processing Dependency: libverto-module-base for package: krb5-server-1.13.2-12.el7_2.x86_64
---> Package krb5-workstation.x86_64 0:1.13.2-12.el7_2 will be installed
--> Running transaction check
---> Package libverto-libevent.x86_64 0:0.2.5-4.el7 will be installed
--> Processing Dependency: libevent-2.0.so.5()(64bit) for package: libverto-libevent-0.2.5-4.el7.x86_64
---> Package words.noarch 0:3.0-22.el7 will be installed
--> Running transaction check
---> Package libevent.x86_64 0:2.0.21-4.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package          Arch   Version         Repository                        Size
================================================================================
Installing:
 krb5-server      x86_64 1.13.2-12.el7_2 rhui-REGION-rhel-server-releases 921 k
 krb5-workstation x86_64 1.13.2-12.el7_2 rhui-REGION-rhel-server-releases 765 k
Installing for dependencies:
 libevent         x86_64 2.0.21-4.el7    rhui-REGION-rhel-server-releases 214 k
 libverto-libevent
                  x86_64 0.2.5-4.el7     rhui-REGION-rhel-server-releases 8.9 k
 words            noarch 3.0-22.el7      rhui-REGION-rhel-server-releases 1.4 M

Transaction Summary
================================================================================
Install  2 Packages (+3 Dependent packages)

Total download size: 3.2 M
Installed size: 9.0 M
Is this ok [y/d/N]: y
Downloading packages:
(1/5): krb5-server-1.13.2-12.el7_2.x86_64.rpm              | 921 kB   00:00
(2/5): krb5-workstation-1.13.2-12.el7_2.x86_64.rpm         | 765 kB   00:00
(3/5): libevent-2.0.21-4.el7.x86_64.rpm                    | 214 kB   00:00
(4/5): libverto-libevent-0.2.5-4.el7.x86_64.rpm            | 8.9 kB   00:00
(5/5): words-3.0-22.el7.noarch.rpm                         | 1.4 MB   00:00
--------------------------------------------------------------------------------
Total                                              7.6 MB/s | 3.2 MB  00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : words-3.0-22.el7.noarch                                      1/5
  Installing : libevent-2.0.21-4.el7.x86_64                                 2/5
  Installing : libverto-libevent-0.2.5-4.el7.x86_64                         3/5
  Installing : krb5-server-1.13.2-12.el7_2.x86_64                           4/5
  Installing : krb5-workstation-1.13.2-12.el7_2.x86_64                      5/5
  Verifying  : libverto-libevent-0.2.5-4.el7.x86_64                         1/5
  Verifying  : krb5-workstation-1.13.2-12.el7_2.x86_64                      2/5
  Verifying  : libevent-2.0.21-4.el7.x86_64                                 3/5
  Verifying  : words-3.0-22.el7.noarch                                      4/5
  Verifying  : krb5-server-1.13.2-12.el7_2.x86_64                           5/5

Installed:
  krb5-server.x86_64 0:1.13.2-12.el7_2
  krb5-workstation.x86_64 0:1.13.2-12.el7_2

Dependency Installed:
  libevent.x86_64 0:2.0.21-4.el7     libverto-libevent.x86_64 0:0.2.5-4.el7
  words.noarch 0:3.0-22.el7

Complete!
```
# Install Kerberos client on remaining nodes

```
$ sudo yum install krb5-workstation krb5-libs krb5-auth-dialog

Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
cloudera-manager                                         |  951 B     00:00
mysql-connectors-community                               | 2.5 kB     00:00
mysql-tools-community                                    | 2.5 kB     00:00
mysql55-community                                        | 2.5 kB     00:00
rhui-REGION-client-config-server-7                       | 2.9 kB     00:00
rhui-REGION-rhel-server-releases                         | 3.5 kB     00:00
rhui-REGION-rhel-server-rh-common                        | 3.8 kB     00:00
(1/2): rhui-REGION-rhel-server-releases/7Server/x86_64/upd | 1.4 MB   00:00
(2/2): rhui-REGION-rhel-server-releases/7Server/x86_64/pri |  27 MB   00:00
Package krb5-libs-1.13.2-12.el7_2.x86_64 already installed and latest version
No package krb5-auth-dialog available.
Resolving Dependencies
--> Running transaction check
---> Package krb5-workstation.x86_64 0:1.13.2-12.el7_2 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package          Arch   Version         Repository                        Size
================================================================================
Installing:
 krb5-workstation x86_64 1.13.2-12.el7_2 rhui-REGION-rhel-server-releases 765 k

Transaction Summary
================================================================================
Install  1 Package

Total download size: 765 k
Installed size: 2.4 M
Is this ok [y/d/N]: y
Downloading packages:
krb5-workstation-1.13.2-12.el7_2.x86_64.rpm                | 765 kB   00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : krb5-workstation-1.13.2-12.el7_2.x86_64                      1/1
  Verifying  : krb5-workstation-1.13.2-12.el7_2.x86_64                      1/1

Installed:
  krb5-workstation.x86_64 0:1.13.2-12.el7_2

Complete!
```

## Edit /var/kerberos/krb5kdc/kdc.conf on Kerberos server

```
# cat /var/kerberos/krb5kdc/kdc.conf
[kdcdefaults]
 kdc_ports = 88
 kdc_tcp_ports = 88

[realms]
 GOELPH.COM = {
  #master_key_type = aes256-cts
  acl_file = /var/kerberos/krb5kdc/kadm5.acl
  dict_file = /usr/share/dict/words
  admin_keytab = /var/kerberos/krb5kdc/kadm5.keytab
  supported_enctypes = aes256-cts:normal aes128-cts:normal des3-hmac-sha1:normal arcfour-hmac:normal camellia256-cts:normal camellia128-cts:normal des-hmac-sha1:normal des-cbc-md5:normal des-cbc-crc:normal
  max_life = 1d
  max_renewable_life = 7d
 }
```

## Edit /etc/krb5.conf on Kerboros clients and place on all 5 servers

```
$ cat /tmp/krb5.conf
[logging]
 default = FILE:/var/log/krb5libs.log
 kdc = FILE:/var/log/krb5kdc.log
 admin_server = FILE:/var/log/kadmind.log

[libdefaults]
 dns_lookup_realm = false
 dns_lookup_kdc = false
 ticket_lifetime = 24h
 renew_lifetime = 7d
 forwardable = true
 udp_preference_limit = 1
 default_tgs_enctypes = arcfour-hmac
 default_tkt_enctypes = arcfour-hmac
# rdns = false
 default_realm = GOELPH.COM
# default_ccache_name = KEYRING:persistent:%{uid}

[realms]
 GOELPH.COM = {
  kdc = ip-172-31-63-2.ec2.internal
  admin_server = ip-172-31-63-2.ec2.internal
 }

[domain_realm]
 .ec2.internal = GOELPH.COM
 ec2.internal = GOELPH.COM
```

## Use kdb5_util to create the database on the CM server

```
# /usr/sbin/kdb5_util create -s
Loading random data
Initializing database '/var/kerberos/krb5kdc/principal' for realm 'GOELPH.COM',
master key name 'K/M@GOELPH.COM'
You will be prompted for the database Master Password.
It is important that you NOT FORGET this password.
Enter KDC database master key:                  [entered 'cloudera']
Re-enter KDC database master key to verify:     [entered 'cloudera']
```

## Add cloudera-scm Principal

```
# kadmin.local
Authenticating as principal root/admin@GOELPH.COM with password.
kadmin.local:  addprinc cloudera-scm@GOELPH.COM
WARNING: no policy specified for cloudera-scm@GOELPH.COM; defaulting to no policy
Enter password for principal "cloudera-scm@GOELPH.COM":       [entered 'cloudera']
Re-enter password for principal "cloudera-scm@GOELPH.COM":    [entered 'cloudera']
Principal "cloudera-scm@GOELPH.COM" created.
```

## Configure ACLs

```
*/admin@GOELPH.COM      *
cloudera-scm@GOELPH.COM admilc
```

## Add password policy to database

```
# kadmin.local
Authenticating as principal root/admin@GOELPH.COM with password.
kadmin.local:  addpol admin
kadmin.local:  addpol users
kadmin.local:  addpol hosts
kadmin.local:  exit

```

## Start Kerberos server

```
# service krb5kdc start
Redirecting to /bin/systemctl start  krb5kdc.service
# service kadmin start
Redirecting to /bin/systemctl start  kadmin.service
```

## Test kinit for cloudera-scm users

```
# kinit cloudera-scm
Password for cloudera-scm@GOELPH.COM:

# klist
Ticket cache: FILE:/tmp/krb5cc_0
Default principal: cloudera-scm@GOELPH.COM

Valid starting       Expires              Service principal
09/22/2016 09:00:06  09/23/2016 09:00:06  krbtgt/GOELPH.COM@GOELPH.COM
        renew until 09/29/2016 09:00:06
```

# After kerberos integration with Cloudera Manager

## Add another Linux user as kerberos principal

```
# kadmin.local
Authenticating as principal cloudera-scm/admin@GOELPH.COM with password.
kadmin.local:  addprinc goelph@GOELPH.COM
WARNING: no policy specified for goelph@GOELPH.COM; defaulting to no policy
Enter password for principal "goelph@GOELPH.COM":         [entered 'cloudera']
Re-enter password for principal "goelph@GOELPH.COM":      [entered 'cloudera']
```

## Obtain credentials for goelph@GOELPH

```
$ kinit goelph@GOELPH.COM
Password for goelph@GOELPH.COM:
```

## Attempt to run 'pi' example program

```
$ hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar pi 10 10000
Number of Maps  = 10
Samples per Map = 10000
Wrote input for Map #0
Wrote input for Map #1
Wrote input for Map #2
Wrote input for Map #3
Wrote input for Map #4
Wrote input for Map #5
Wrote input for Map #6
Wrote input for Map #7
Wrote input for Map #8
Wrote input for Map #9
Starting Job
16/09/22 10:01:01 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-63-1.ec2.internal/172.31.63.1:8032
16/09/22 10:01:02 INFO hdfs.DFSClient: Created HDFS_DELEGATION_TOKEN token 1 for goelph on ha-hdfs:nameservice1
16/09/22 10:01:02 INFO security.TokenCache: Got dt for hdfs://nameservice1; Kind: HDFS_DELEGATION_TOKEN, Service: ha-hdfs:nameservice1, Ident: (HDFS_DELEGATION_TOKEN token 1 for goelph)
16/09/22 10:01:02 INFO input.FileInputFormat: Total input paths to process : 10
16/09/22 10:01:02 INFO mapreduce.JobSubmitter: number of splits:10
16/09/22 10:01:02 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1474551725719_0001
16/09/22 10:01:02 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: ha-hdfs:nameservice1, Ident: (HDFS_DELEGATION_TOKEN token 1 for goelph)
16/09/22 10:01:03 INFO impl.YarnClientImpl: Submitted application application_1474551725719_0001
16/09/22 10:01:03 INFO mapreduce.Job: The url to track the job: http://ip-172-31-63-1.ec2.internal:8088/proxy/application_1474551725719_0001/
16/09/22 10:01:03 INFO mapreduce.Job: Running job: job_1474551725719_0001
16/09/22 10:01:12 INFO mapreduce.Job: Job job_1474551725719_0001 running in uber mode : false
16/09/22 10:01:12 INFO mapreduce.Job:  map 0% reduce 0%
16/09/22 10:01:19 INFO mapreduce.Job:  map 10% reduce 0%
16/09/22 10:01:20 INFO mapreduce.Job:  map 30% reduce 0%
16/09/22 10:01:21 INFO mapreduce.Job:  map 40% reduce 0%
16/09/22 10:01:24 INFO mapreduce.Job:  map 60% reduce 0%
16/09/22 10:01:26 INFO mapreduce.Job:  map 80% reduce 0%
16/09/22 10:01:27 INFO mapreduce.Job:  map 90% reduce 0%
16/09/22 10:01:29 INFO mapreduce.Job:  map 100% reduce 0%
16/09/22 10:01:33 INFO mapreduce.Job:  map 100% reduce 100%
16/09/22 10:01:34 INFO mapreduce.Job: Job job_1474551725719_0001 completed successfully
```
## Test on another node without using 'kinit goelph'

```
$ hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar pi 10 10000
Number of Maps  = 10
Samples per Map = 10000
16/09/22 10:07:53 WARN security.UserGroupInformation: PriviledgedActionException as:goelph (auth:KERBEROS) cause:javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]
```

		
		




