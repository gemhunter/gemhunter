import sys

infile = sys.argv[1]
python ../src/parser.py infile
outfile = infile[0,len(infile)-3]
outfile += ".dot"
python ../src/getdot.py > outfile
