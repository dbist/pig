register 'allcaps.py' using streaming_python as pyudfs;

a = load '../input.txt';
b = foreach a generate pyudfs.allcaps($0);
dump b;
