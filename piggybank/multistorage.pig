REGISTER /usr/hdp/current/pig-client/piggybank.jar;

/*
  example of MultiStorage, https://pig.apache.org/docs/r0.15.0/api/org/apache/pig/piggybank/storage/MultiStorage.html
  optionally takes compression (bz2, gz, none) and field separator
*/

A = LOAD 'input' USING PigStorage(); 
fs -rm -R output;
STORE A INTO 'output' USING org.apache.pig.piggybank.storage.MultiStorage('output', '0');
