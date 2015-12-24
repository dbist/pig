-- numbers is a text file with numbers 4, 9, etc each on new line
DEFINE Sqrt InvokeForDouble('java.lang.Math.sqrt', 'double');
numbers = load '/user/guest/numbers' using PigStorage() as (num:double);
sqrts = FOREACH numbers GENERATE Sqrt($0);
dump sqrts;
