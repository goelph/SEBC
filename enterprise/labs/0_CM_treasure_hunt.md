# What is ubertask optimization?

```
http://www.cloudera.com/documentation/enterprise/5-7-x/topics/cm_props_cdh570_yarn_mr2included_.html

Enable Ubertask Optimization

Whether to enable ubertask optimization, which runs "sufficiently small" jobs sequentially
within a single JVM. "Small" is defined by the mapreduce.job.ubertask.maxmaps, 
mapreduce.job.ubertask.maxreduces, and mapreduce.job.ubertask.maxbytes settings.	

mapreduce.job.ubertask.enable	false	mapreduc
```

# Where in CM is the Kerberos Security Realm value displayed?

```
Administration > Settings
Search for 'Kerberos' and found a Kerberos Security Realm field (default is HADOOP.COM)
```

# Which CDH service(s) host a property for enabling Kerberos authentication?

```
From the Security doc: "Cloudera Manager can automatically create and deploy a keytab file
for the hdfs user and a keytab file for the mapred user on every host in your cluster, as
well as keytab files for the oozie and hue users on select hosts.
```

# How do you upgrade the CM agents?


```
Hosts > All hosts
click on "Re-Run Upgrade wizard"
```

Also upgraded during a full Cloudera upgrade via Cloudera Manager

# Give the tsquery statement used to chart Hue's CPU utilization?

Chart Builder indicates that Hue CPU Cores Used is generated using:

```
select cpu_system_rate + cpu_user_rate where category=ROLE and serviceName=$SERVICENAME
```

where $SERVICENAME = hue  $CLUSTERID = 1  
```

# Name all the roles that make up the Hive service

Hive service roles noted:
* Hive Metastore Server
* HiveServer2
* Gateway (basically, clients can access Hive from nodes with this role using beeline CLI)

# What steps must be completed before integrating Cloudera Manager with Kerberos?

From Cloudera Manager after selecting 'Enable Kerberos':
```
This wizard walks you through the steps to configure Cloudera Manager and CDH to use
Kerberos for authentication.

Before using the wizard, please ensure that you have performed the following steps:

Set up a working KDC. Cloudera Manager supports MIT KDC and Active Directory.

The KDC should be configured to have non-zero ticket lifetime and renewal lifetime. CDH 
will not work properly if tickets are not renewable.

OpenLdap client libraries should be installed on the Cloudera Manager Server host if you 
want to use Active Directory. Also, Kerberos client libraries should be installed on ALL 
hosts.

Cloudera Manager needs an account that has permissions to create other accounts in the KDC.
```

Other documentation explains further:

Ensure you have secured communication between the Cloudera Manager Server and Agents
before you enable Kerberos on your cluster. Kerberos keytabs are sent from the Cloudera
Manager Server to the Agents, and must be encrypted to prevent potential misuse of leaked
keytabs. For secure communication, you should have at least Level 1 TLS enabled as
described in Configuring TLS Security for Cloudera Manager (Level 1).

These instructions assume you know how to install and configure Kerberos, you already
have a working Kerberos key distribution center (KDC) and realm setup, and that you've
installed the following Kerberos client packages on all cluster hosts and hosts that
will be used to access the cluster, depending on the OS in use.
OS	Packages to be Installed

RHEL/CentOS
	
*openldap-clients on the Cloudera Manager Server host
*krb5-workstation, krb5-libs on ALL hosts

Oozie and Hue require that the realm support renewable tickets. Cloudera Manager
supports setting up kerberized clusters with MIT KDC and Active Directory.

Cloudera supports the version of Kerberos that ships with each supported operating system.

Step 1: Install Cloudera Manager and CDH
Step 2: If You are Using AES-256 Encryption, Install the JCE Policy File
Step 3: Get or Create a Kerberos Principal for the Cloudera Manager Server

Check the version of the Kerberos server and client - they should match!





