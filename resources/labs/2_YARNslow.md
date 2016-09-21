NOTE: moving from 1024 to 2048 MB containers resulted in teragen hanging.

```
$ ./YARNtest.sh
Loop [2 4 6 8] mappers
Loop for [2] reducers
Loop for 512 1024 MB containersi
Testing loop started on Wed Sep 21 12:40:41 EDT 2016

...
mapper # 8
reducer # 2
container memory 512
teragen phase timing:

real    0m21.415s
user    0m6.191s
sys     0m0.197s
terasort phase timing:

real    0m28.206s
user    0m8.377s
sys     0m0.228s
Deleted /user/goelph/results/tg-10GB-8-2-512
Deleted /user/goelph/results/ts-10GB-8-2-512
```
