# <center> HDFS Testing

## full teragen command line

``
$ time hadoop jar hadoop-examples.jar teragen -D dfs.block.size=67108864 51200000 tgen64
``

## Output of time command

```
real    1m14.271s
user    0m5.470s
sys     0m0.210s
```

## Directory listing

```

[christie@ip-172-31-1-223 ~]$ hdfs dfs -ls /user/christie/tgen64
Found 3 items
-rw-r--r--   3 christie christie          0 2016-09-23 11:47 /user/christie/tgen64/_SUCCESS
-rw-r--r--   3 christie christie 2560000000 2016-09-23 11:47 /user/christie/tgen64/part-m-00000
-rw-r--r--   3 christie christie 2560000000 2016-09-23 11:47 /user/christie/tgen64/part-m-00001
```
