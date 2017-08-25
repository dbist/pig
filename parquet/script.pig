REGISTER hdfs://dlm3ha/user/centos/parquet-pig-bundle-1.8.1.jar; 
data = load 'words' using PigStorage(',') as (f1:chararray,f2:chararray,f3:chararray,f4:chararray,f5:chararray);
store data into 'hdfs://dlm3ha/user/centos/output' using org.apache.parquet.pig.ParquetStorer;
