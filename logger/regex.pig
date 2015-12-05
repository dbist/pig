-- script to pull last name, first name and email address from text, \w, and \s must be escaped
data = LOAD '$log'
            USING org.apache.pig.piggybank.storage.MyRegExLoader('"?([^"]*)"?\\s*([^\\s]+@.+)') AS (name: chararray, email: chararray);
dump data;
