## command used:

```
$ curl -X GET -u "goelph:cloudera" -i http://ec2-54-196-83-198.compute-1.amazonaws.com:7180/api/v2/cm/deployment > t1
```

## output

```
HTTP/1.1 200 OK
Expires: Thu, 01-Jan-1970 00:00:00 GMT
Set-Cookie: CLOUDERA_MANAGER_SESSIONID=1vnmv821n3x0xeci03zueyrcp;Path=/;HttpOnly
Content-Type: application/json
Date: Thu, 22 Sep 2016 01:28:25 GMT
Transfer-Encoding: chunked
Server: Jetty(6.1.26.cloudera.4)

{
  "timestamp" : "2016-09-22T01:28:25.721Z",
  "clusters" : [ {
    "name" : "SEBC",
    "version" : "CDH5",
    "services" : [ {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-23e30d519b674b7f9790f8b1f2b1eb90",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "0c7d5cd4-249a-4d8f-8f54-6a84c40a0380"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bl8nhcnyzuvaghx37cq7ug46h"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-963fecd72ea5e47fec7ed76edaafdcbc",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "5eca110a-a8b9-40d3-9d7e-d51408c218cc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "amloyq5icx7rw32xgssatc8q1"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-d6252c4a79fb717a51a1c8bf77e6708f",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "8712e08f-5496-4a1e-bc55-2e6ae4cba0db"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3mpu4dmoo2id5uznfvtuyk4bl"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "3219965132"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "500"
          }, {
            "name" : "rm_io_weight",
            "value" : "250"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/dfs/jn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "3488612352"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "3488612352"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "WlmRmQNgBBs9Gs1vpEAxHFlUFwuTar"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "kCydnOPiIDx6hIIUvV7QCkuoGnyAWf"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "Irk0Lf0u80ibacWnN887FkI8KUGJFD"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "25"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-c04a2103d5ad481508ded9b6a4f3c8c1",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "3fec6f1b-3aa4-4050-a722-b03903180090"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-23e30d519b674b7f9790f8b1f2b1eb90",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "0c7d5cd4-249a-4d8f-8f54-6a84c40a0380"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7mib7jgwrnw8z0glwun4utepu"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-963fecd72ea5e47fec7ed76edaafdcbc",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "5eca110a-a8b9-40d3-9d7e-d51408c218cc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "cyu7gh1ldjpnxo6gkum8thkk8"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-c04a2103d5ad481508ded9b6a4f3c8c1",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "3fec6f1b-3aa4-4050-a722-b03903180090"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "25p626v3pj7ibzu1rgm05giyo"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-d6252c4a79fb717a51a1c8bf77e6708f",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "8712e08f-5496-4a1e-bc55-2e6ae4cba0db"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3319nds99cguumw2xcm77zbtu"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-963fecd72ea5e47fec7ed76edaafdcbc",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "5eca110a-a8b9-40d3-9d7e-d51408c218cc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "annkyvjcyrnudstdln9m2zqv9"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-d6252c4a79fb717a51a1c8bf77e6708f",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "8712e08f-5496-4a1e-bc55-2e6ae4cba0db"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "aqmk38ko635zbp5t6a9tk6jkk"
          } ]
        }
      }, {
        "name" : "hdfs-HTTPFS-c04a2103d5ad481508ded9b6a4f3c8c1",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "3fec6f1b-3aa4-4050-a722-b03903180090"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "59vom8eoaeqvm6ps68r3j8keg"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-23e30d519b674b7f9790f8b1f2b1eb90",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "0c7d5cd4-249a-4d8f-8f54-6a84c40a0380"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dxtlwinomh0m8yjlmz5y6xibl"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-963fecd72ea5e47fec7ed76edaafdcbc",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "5eca110a-a8b9-40d3-9d7e-d51408c218cc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3avekvwaqpl2cdtxj0pf58lpy"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-d6252c4a79fb717a51a1c8bf77e6708f",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "8712e08f-5496-4a1e-bc55-2e6ae4cba0db"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "s31v0xummngg5dkfgj1zcglo"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-963fecd72ea5e47fec7ed76edaafdcbc",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "5eca110a-a8b9-40d3-9d7e-d51408c218cc"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "111"
          }, {
            "name" : "role_jceks_password",
            "value" : "vf1wyjqc9z6y9c7j6cqz7yb3"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-d6252c4a79fb717a51a1c8bf77e6708f",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "8712e08f-5496-4a1e-bc55-2e6ae4cba0db"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "75"
          }, {
            "name" : "role_jceks_password",
            "value" : "5yd6z0ewk1wqz0rcqjxm9poi9"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "8"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "2"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "node_manager_java_heapsize",
            "value" : "52428800"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "1500"
          }, {
            "name" : "rm_io_weight",
            "value" : "750"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "1024"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "52428800"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "2877"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "75"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "BkY2oD8Edj4ZzDGoBHDKATf8q35yNv"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-c04a2103d5ad481508ded9b6a4f3c8c1",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "3fec6f1b-3aa4-4050-a722-b03903180090"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ejg7h7ikmc7ya7sqcnlifmwzn"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-23e30d519b674b7f9790f8b1f2b1eb90",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "0c7d5cd4-249a-4d8f-8f54-6a84c40a0380"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "4hpu4u0a9oumw4i5wsofqdyp1"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-963fecd72ea5e47fec7ed76edaafdcbc",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "5eca110a-a8b9-40d3-9d7e-d51408c218cc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "a3jx1tegulwdrnk3kpgh5rum9"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-c04a2103d5ad481508ded9b6a4f3c8c1",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "3fec6f1b-3aa4-4050-a722-b03903180090"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ec0keyqiqoby28rgh182llnni"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-d6252c4a79fb717a51a1c8bf77e6708f",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "8712e08f-5496-4a1e-bc55-2e6ae4cba0db"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3pzle2hxx5yqz64klwx9sxmpz"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-963fecd72ea5e47fec7ed76edaafdcbc",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "5eca110a-a8b9-40d3-9d7e-d51408c218cc"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "92"
          }, {
            "name" : "role_jceks_password",
            "value" : "9h7qzns8s7t4pki4g5lshg242"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "1320157184"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "52428800"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "912680550"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "153"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-172-31-63-2.ec2.internal"
        }, {
          "name" : "hive_metastore_database_name",
          "value" : "hive"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "password"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-23e30d519b674b7f9790f8b1f2b1eb90",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "0c7d5cd4-249a-4d8f-8f54-6a84c40a0380"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-963fecd72ea5e47fec7ed76edaafdcbc",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "5eca110a-a8b9-40d3-9d7e-d51408c218cc"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-c04a2103d5ad481508ded9b6a4f3c8c1",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "3fec6f1b-3aa4-4050-a722-b03903180090"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-d6252c4a79fb717a51a1c8bf77e6708f",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "8712e08f-5496-4a1e-bc55-2e6ae4cba0db"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-daf75ead0e36d93658fa1fcaa286f7cf",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "f9e3e11d-9520-41d2-9d9a-e1688e5b2ef1"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-daf75ead0e36d93658fa1fcaa286f7cf",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "f9e3e11d-9520-41d2-9d9a-e1688e5b2ef1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "enw5xvm0j9k8c9s85h791yntx"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-23e30d519b674b7f9790f8b1f2b1eb90",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "0c7d5cd4-249a-4d8f-8f54-6a84c40a0380"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5mdawiv8p7hlputnjyrfr5n3b"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "ip-172-31-63-1.ec2.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "password"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "52428800"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-963fecd72ea5e47fec7ed76edaafdcbc",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "5eca110a-a8b9-40d3-9d7e-d51408c218cc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ag49hdhrq0lqxl8pz3zzqpsut"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "ip-172-31-63-2.ec2.internal"
        }, {
          "name" : "database_password",
          "value" : "password"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-c04a2103d5ad481508ded9b6a4f3c8c1"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-c04a2103d5ad481508ded9b6a4f3c8c1",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "3fec6f1b-3aa4-4050-a722-b03903180090"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "euga2qmt6ae2md65oqiniywi9"
          }, {
            "name" : "secret_key",
            "value" : "rXNqJnntc7Qzl5BTPNpTu1K1etIpi6"
          } ]
        }
      } ],
      "displayName" : "Hue"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "8712e08f-5496-4a1e-bc55-2e6ae4cba0db",
    "ipAddress" : "172.31.63.0",
    "hostname" : "ip-172-31-63-0.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "5eca110a-a8b9-40d3-9d7e-d51408c218cc",
    "ipAddress" : "172.31.63.1",
    "hostname" : "ip-172-31-63-1.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "f9e3e11d-9520-41d2-9d9a-e1688e5b2ef1",
    "ipAddress" : "172.31.63.2",
    "hostname" : "ip-172-31-63-2.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "3fec6f1b-3aa4-4050-a722-b03903180090",
    "ipAddress" : "172.31.63.3",
    "hostname" : "ip-172-31-63-3.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "0c7d5cd4-249a-4d8f-8f54-6a84c40a0380",
    "ipAddress" : "172.31.63.4",
    "hostname" : "ip-172-31-63-4.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__4887c960-aa41-4711-adff-652b73e8f1c5",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "0dbd48f79cfd14c365f73f9cb4a2f1d51e8b736835a8906e19a7f4f2280d146b",
    "pwSalt" : 9212279146657262233,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__bd6435c9-6586-4986-86ae-545f1a98161a",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "2835feddc5dd27df728215db1248dfc1980cdf5994e3eac58eaf1c2e8ed7606f",
    "pwSalt" : 2359542363781377941,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-ACTIVITYMONITOR-daf75ead0e36d93658fa1fcaa286f7cf",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "b43c2716b04ba538f7c150edb239aabf8193fe04f793b673bc0a25a1aa52d7e5",
    "pwSalt" : 9137895029270370882,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-daf75ead0e36d93658fa1fcaa286f7cf",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "97a308725b7bd5862affb8d0a4afd231a3ae28ddd0a863639e556a5149f040f2",
    "pwSalt" : -1019998201938701702,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-daf75ead0e36d93658fa1fcaa286f7cf",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "36d65864e5a025dce7290a7f2dc783fbad14af9194b0d758c5b46de70c71ee12",
    "pwSalt" : -7091852738773723256,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-daf75ead0e36d93658fa1fcaa286f7cf",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "0e23a4d8a47eaf3e1289dbb00ceadf31431db8e6ed6d647661d8c440c30a2ff7",
    "pwSalt" : -9029319519509560409,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-daf75ead0e36d93658fa1fcaa286f7cf",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "d9900ae8d79e83ec299a4114efebd73ad5f40cd6124bd4201c31703bb246e9e1",
    "pwSalt" : -7066564330275730370,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "cee54bd21eda5f853eb382b2b43af2247725304207c82500a87a8fdafc231528",
    "pwSalt" : -4377390159938087538,
    "pwLogin" : true
  }, {
    "name" : "goelph",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "11062ff23f2b4c352102d412ab00aa72f8fb7914b3c039e7be684ef953bcad8c",
    "pwSalt" : 1953847467819454786,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "1789b6273e0aaa097ae66f255c4c4408ac78f9f78264fbc50a3838401141c39b",
    "pwSalt" : 5972193556213972316,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.8.1",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20160722-1141",
    "gitHash" : "a0886a893750079a4dc7f902be22d6f6e63b85a1",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "ACTIVITYMONITOR",
        "items" : [ {
          "name" : "firehose_database_host",
          "value" : "ip-172-31-63-2.ec2.internal"
        }, {
          "name" : "firehose_database_name",
          "value" : "amon"
        }, {
          "name" : "firehose_database_password",
          "value" : "password"
        }, {
          "name" : "firehose_database_user",
          "value" : "amon"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "ip-172-31-63-2.ec2.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "password"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-daf75ead0e36d93658fa1fcaa286f7cf",
      "type" : "ACTIVITYMONITOR",
      "hostRef" : {
        "hostId" : "f9e3e11d-9520-41d2-9d9a-e1688e5b2ef1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "aapmtsxz7h7a0801ibxzcegqm"
        } ]
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-daf75ead0e36d93658fa1fcaa286f7cf",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "f9e3e11d-9520-41d2-9d9a-e1688e5b2ef1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "4iqo6ybmksrntw5ekas7l9osx"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-daf75ead0e36d93658fa1fcaa286f7cf",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "f9e3e11d-9520-41d2-9d9a-e1688e5b2ef1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "7d9fp4t2ibhfd69n5dk37miiq"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-daf75ead0e36d93658fa1fcaa286f7cf",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "f9e3e11d-9520-41d2-9d9a-e1688e5b2ef1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "vgmhln8mjsd8oaj5id4jyiko"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-daf75ead0e36d93658fa1fcaa286f7cf",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "f9e3e11d-9520-41d2-9d9a-e1688e5b2ef1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "dotc7a7giwrbt6t3j5v8j5mei"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-daf75ead0e36d93658fa1fcaa286f7cf",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "f9e3e11d-9520-41d2-9d9a-e1688e5b2ef1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "9x8zhvvuqe4jxaalwro2mdpgy"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/27/2012 1:10"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}
```
