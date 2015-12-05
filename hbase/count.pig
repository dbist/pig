-- Sample script to count rows in an HBase table
SET DEFAULT_PARALLEL 20;
A = LOAD 'hbase://table_name' USING org.apache.pig.backend.hadoop.hbase.HBaseStorage('cf:*', '-loadKey true') as (rowkey:bytearray);
B = GROUP A ALL;
C = FOREACH B GENERATE COUNT(A);
DUMP C;
