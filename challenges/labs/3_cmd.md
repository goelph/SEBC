# <center> Install CDH

## show grants for hive

```
mysql> show grants for hive;
+-----------------------------------------------------------------------------------------------------+
| Grants for hive@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'hive'@'%' IDENTIFIED BY PASSWORD '*D997577481B722A2996B58BCE11EF3C312AC0B89' |
| GRANT ALL PRIVILEGES ON `hive`.* TO 'hive'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
```

## show grants for rman

```
mysql> show grants for rman;
+-----------------------------------------------------------------------------------------------------+
| Grants for rman@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'rman'@'%' IDENTIFIED BY PASSWORD '*D997577481B722A2996B58BCE11EF3C312AC0B89' |
| GRANT ALL PRIVILEGES ON `rman`.* TO 'rman'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
```

## show grants for oozie

```
mysql> show grants for oozie
    -> ;
+------------------------------------------------------------------------------------------------------+
| Grants for oozie@%                                                                                   |
+------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'oozie'@'%' IDENTIFIED BY PASSWORD '*D997577481B722A2996B58BCE11EF3C312AC0B89' |
| GRANT ALL PRIVILEGES ON `oozie`.* TO 'oozie'@'%'                                                     |
+------------------------------------------------------------------------------------------------------+
```

## hdfs dfs -ls /user

```
[hdfs@ip-172-31-1-223 ~]$ hdfs dfs -ls /user
Found 
6 items
drwxr-xr-x   - christie christie          0 2016-09-23 11:30 /user/christie
drwxrwxrwx   - mapred   hadoop            0 2016-09-23 11:27 /user/history
drwxrwxr-t   - hive     hive              0 2016-09-23 11:27 /user/hive
drwxrwxr-x   - hue      hue               0 2016-09-23 11:28 /user/hue
drwxrwxr-x   - oozie    oozie             0 2016-09-23 11:28 /user/oozie
drwxr-xr-x   - weiner   weiner            0 2016-09-23 11:31 /user/weiner
```

## hadoop classpath

```
[hdfs@ip-172-31-1-223 ~]$ hadoop classpath
/etc/hadoop/conf:/opt/cloudera/parcels/CDH-5.7.3-1.cdh5.7.3.p0.5/lib/hadoop/libexec/../../hadoop/lib/*:/opt/cloudera/parcels/CDH-5.7.3-1.cdh5.7.3.p0.5/lib/hadoop/libexec/../../hadoop/.//*:/opt/cloudera/parcels/CDH-5.7.3-1.cdh5.7.3.p0.5/lib/hadoop/libexec/../../hadoop-hdfs/./:/opt/cloudera/parcels/CDH-5.7.3-1.cdh5.7.3.p0.5/lib/hadoop/libexec/../../hadoop-hdfs/lib/*:/opt/cloudera/parcels/CDH-5.7.3-1.cdh5.7.3.p0.5/lib/hadoop/libexec/../../hadoop-hdfs/.//*:/opt/cloudera/parcels/CDH-5.7.3-1.cdh5.7.3.p0.5/lib/hadoop/libexec/../../hadoop-yarn/lib/*:/opt/cloudera/parcels/CDH-5.7.3-1.cdh5.7.3.p0.5/lib/hadoop/libexec/../../hadoop-yarn/.//*:/opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/lib/*:/opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/.//*
```


## CM API call to ../api/v13/hosts

```
{
    "hostId" : "bb2da618-8395-4a77-9b71-1f83121ea886",
    "ipAddress" : "172.31.1.223",
    "hostname" : "ip-172-31-1-223.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-1-227.ec2.internal:7180/cmf/hostRedirect/bb2da618-8395-4a77-9b71-1f83121ea886",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }
```
