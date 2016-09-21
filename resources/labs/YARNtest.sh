#!/bin/sh
# Confirm the path values given below correspond to your installation

HADOOP_MR=/opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce
HADOOP_PATH=/opt/cloudera/parcels/CDH/bin

echo "Loop [2 4 6 8] mappers"
echo "Loop for [2] reducers"
echo "Loop for 512 1024 MB containers"i

# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in 2 4 6 8 
do
echo "mapper # ${i}"
   # Reducer containers
   for j in 2 
   do
      echo "reducer # ${j}"                 
      # Container memory
      for k in 512 1024
      do
	 echo "container memory ${k}"
         # Set mapper JVM heap 
         MAP_MB=`echo "($k*0.8)/1" | bc` 

         # Set reducer JVM heap 
         RED_MB=`echo "($k*0.8)/1" | bc` 

	echo "teragen phase timing:"
        time $HADOOP_PATH/hadoop jar $HADOOP_MR/hadoop-examples.jar teragen \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     100000 /user/goelph/results/tg-10GB-${i}-${j}-${k} 1>tera_${i}_${j}_${k}.out 2>tera_${i}_${j}_${k}.err                       

	echo "terasort phase timing:"
       time $HADOOP_PATH/hadoop jar $HADOOP_MR/hadoop-examples.jar terasort \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.job.reduces=$j \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     -Dmapreduce.reduce.memory.mb=$k \
                     -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
	             /user/goelph/results/tg-10GB-${i}-${j}-${k}  \
                     /user/goelph/results/ts-10GB-${i}-${j}-${k} 1>>tera_${i}_${j}_${k}.out 2>>tera_${i}_${j}_${k}.err                         

        $HADOOP_PATH/hadoop fs -rm -r -skipTrash /user/goelph/results/tg-10GB-${i}-${j}-${k}                         
        $HADOOP_PATH/hadoop fs -rm -r -skipTrash /user/goelph/results/ts-10GB-${i}-${j}-${k}                 
      done
   done
done

echo Testing loop ended on `date`

