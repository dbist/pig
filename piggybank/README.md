## MultiStorage Example
##### this is different from PARALLEL as this creates separate directories and places files within them as opposed to
##### PARALLEL where it creates multiple files within the same output directory
```
hdfs dfs -put input .
```
```
pig -x tez multistorage.pig
```
```
hdfs dfs -ls output
```
```
[root@sandbox ~]# hdfs dfs -ls output
Found 6 items
drwxr-xr-x   - root hdfs          0 2016-03-18 02:16 output/1
drwxr-xr-x   - root hdfs          0 2016-03-18 02:16 output/2
drwxr-xr-x   - root hdfs          0 2016-03-18 02:16 output/3
drwxr-xr-x   - root hdfs          0 2016-03-18 02:16 output/4
drwxr-xr-x   - root hdfs          0 2016-03-18 02:16 output/5
-rw-r--r--   3 root hdfs          0 2016-03-18 02:16 output/_SUCCESS
```
```
[root@sandbox ~]# hdfs dfs -ls /user/root/output/5/
Found 1 items
-rw-r--r--   3 root hdfs          2 2016-03-18 02:16 /user/root/output/5/5-0,000
```
```
[root@sandbox ~]# hdfs dfs -cat /user/root/output/5/5-0,000
5
```
