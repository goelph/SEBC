## Stop hive service

```
$ curl -X POST -u "goelph:cloudera" -i http://ec2-54-196-83-198.compute-1.amazonaws.com:7180/api/v12/clusters/SEBC/services/hive/commands/stop

HTTP/1.1 200 OK
Expires: Thu, 01-Jan-1970 00:00:00 GMT
Set-Cookie: CLOUDERA_MANAGER_SESSIONID=sbwse6r1hbv51sy6et46mdk7e;Path=/;HttpOnly
Content-Type: application/json
Date: Thu, 22 Sep 2016 01:45:26 GMT
Transfer-Encoding: chunked
Server: Jetty(6.1.26.cloudera.4)

{
  "id" : 577,
  "name" : "Stop",
  "startTime" : "2016-09-22T01:45:26.136Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

# Get current status for hive service (stopped)

```
$ curl -X GET -u "goelph:cloudera" -i http://ec2-54-196-83-198.compute-1.amazonaws.com:7180/api/v1/clusters/SEBC/services/hive

HTTP/1.1 200 OK
Expires: Thu, 01-Jan-1970 00:00:00 GMT
Set-Cookie: CLOUDERA_MANAGER_SESSIONID=1002kmccjj1l01pv24ryh1rg21;Path=/;HttpOnly
Content-Type: application/json
Date: Thu, 22 Sep 2016 01:48:57 GMT
Transfer-Encoding: chunked
Server: Jetty(6.1.26.cloudera.4)

{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-63-2.ec2.internal:7180/cmf/serviceRedirect/hive",
  "serviceState" : "STOPPED",
  "healthSummary" : "DISABLED",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "DISABLED"
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "DISABLED"
  } ],
  "configStale" : false
}
```

# Start up hive service


```
$ curl -X POST -u "goelph:cloudera" -i http://ec2-54-196-83-198.compute-1.amazonaws.com:7180/api/v12/clusters/SEBC/services/hive/commands/start

HTTP/1.1 200 OK
Expires: Thu, 01-Jan-1970 00:00:00 GMT
Set-Cookie: CLOUDERA_MANAGER_SESSIONID=1nm410ucckqg815ztja8z44w8b;Path=/;HttpOnly
Content-Type: application/json
Date: Thu, 22 Sep 2016 01:51:36 GMT
Transfer-Encoding: chunked
Server: Jetty(6.1.26.cloudera.4)

{
  "id" : 581,
  "name" : "Start",
  "startTime" : "2016-09-22T01:51:36.308Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

# Check hive service status


```
$ curl -X GET -u "goelph:cloudera" -i http://ec2-54-196-83-198.compute-1.amazonaws.com:7180/api/v1/clusters/SEBC/services/hive      HTTP/1.1 200 OK
Expires: Thu, 01-Jan-1970 00:00:00 GMT
Set-Cookie: CLOUDERA_MANAGER_SESSIONID=3ho5yxrk8n2f1p8fibuoyy2qu;Path=/;HttpOnly
Content-Type: application/json
Date: Thu, 22 Sep 2016 01:53:13 GMT
Transfer-Encoding: chunked
Server: Jetty(6.1.26.cloudera.4)

{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-63-2.ec2.internal:7180/cmf/serviceRedirect/hive",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD"
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD"
  } ],
  "configStale" : false
}
```
