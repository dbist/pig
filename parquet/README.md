#### Tested with HDP 2.6

```
wget http://central.maven.org/maven2/org/apache/parquet/parquet-pig-bundle/1.8.1/parquet-pig-bundle-1.8.1.jar
hdfs dfs -put parquet-pig-bundle-1.8.1.jar .
hdfs dfs -put words .
pig -x tez -f script.pig 
```


