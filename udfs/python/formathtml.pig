register 'bsoup.py' using streaming_python as pyudfs;

a = load '../input.html';
b = foreach a generate pyudfs.formathtml($0);
dump b;
