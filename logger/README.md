##### for running in tez mode, set exectype=tez in pig.properties

##### Common Log example

##### Pattern and file info is at http://ita.ee.lbl.gov/html/contrib/NASA-HTTP.html
```
hdfs dfs -put nasa_logs_100 .
pig -param log=nasa_logs_100 -f common_log_format.pig
```

##### Custom Log example
```
hdfs dfs -put emails .
pig -param log=emails -f regex.pig
```
