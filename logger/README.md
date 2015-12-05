##### passing parameter to pig with tez does not work so either use MR or set "exectype=tez" in ambari under advanced pig-properties
```
su guest
hdfs dfs -put access .
pig -param log=access -f common_log_format.pig
```
