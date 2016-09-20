# <center> teragen file creation, 10 GB with 32 MB blocks

## as user 'goelph' on node ip-172-31-63-0


```
$ cd /opt/cloudera/parcels/CDH-5.8.0-1.cdh5.8.0.p0.42/lib/hadoop-mapreduce

$ time hadoop jar hadoop-mapreduce-examples.jar teragen -D dfs.block.size=33554432
107374182 /user/goelph/goelph1

real    2m42.075s
user    0m7.114s
sys     0m0.303s

$ hdfs dfs -ls /user/goelph/goelph1
Found 3 items
-rw-r--r--   3 goelph goelph          0 2016-09-20 14:24 /user/goelph/goelph1/_SUCCESS
-rw-r--r--   3 goelph goelph 5368709100 2016-09-20 14:24 /user/goelph/goelph1/part-m-00000
-rw-r--r--   3 goelph goelph 5368709100 2016-09-20 14:24 /user/goelph/goelph1/part-m-00001
```

# Run the terasort command against this file twice 

##Create a cache pool and directive for the teragen output

```
# su - hdfs
Last login: Tue Sep 20 14:15:55 EDT 2016 on pts/0

$ hdfs cacheadmin -addPool testPool -owner goelph
Successfully added cache pool testPool.

# su - goelph
Last login: Tue Sep 20 15:47:08 EDT 2016 on pts/0
[goelph@ip-172-31-63-0 ~]$ hdfs cacheadmin -addDirective -path /user/goelph/goelph1 -pool testPool
Added cache directive 1

$ time hadoop jar hadoop-examples.jar terasort /user/goelph/goelph1 /user/goelph/t1

real    8m4.379s
user    0m11.058s
sys     0m0.499s

$ time hadoop jar hadoop-examples.jar terasort /user/goelph/goelph1 /user/goelph/t2
real    8m22.068s
user    0m10.863s
sys     0m0.493s
```

Not quite what I expected.
