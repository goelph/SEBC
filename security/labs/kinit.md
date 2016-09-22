## Output from kinit

```
$ kinit -V cloudera-scm
Using default cache: /tmp/krb5cc_1000
Using principal: cloudera-scm@GOELPH.COM
Password for cloudera-scm@GOELPH.COM:
Authenticated to Kerberos v5
```

## Output from klist

```
# klist
Ticket cache: FILE:/tmp/krb5cc_0
Default principal: cloudera-scm@GOELPH.COM

Valid starting       Expires              Service principal
09/22/2016 09:00:06  09/23/2016 09:00:06  krbtgt/GOELPH.COM@GOELPH.COM
        renew until 09/29/2016 09:00:06
```
