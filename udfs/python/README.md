## Convert all text to Upper using Python UDF
```
pig -x tez_local toupper.pig
```


## Processing HTML in Python UDF
##### install beautiful soup
```
yum install -y python-setuptools
easy_install bs4
```
##### this script will execute a local file called input.html in the parent dir
```
pig -x tez_local formathtml.pig
```
##### to process an html file in hdfs
```
hdfs dfs -put file.html /user/username
```
```
pig -x tez formathtml.pig
```
