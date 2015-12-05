data = LOAD '$log'
USING org.apache.pig.piggybank.storage.apachelog.CommonLogLoader()
AS (addr: chararray, logname: chararray, user: chararray, time: chararray,
method: chararray, uri: chararray, proto: chararray,
status: int, bytes: int);
filtered = foreach data generate addr, time, method, status, bytes;
dump filtered;

