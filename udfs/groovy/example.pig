register 'udfs.groovy' using org.apache.pig.scripting.groovy.GroovyScriptEngine as myfuncs;

a = load '../input.txt' using PigStorage();
b = foreach a generate myfuncs.allcaps($0);
dump b;
