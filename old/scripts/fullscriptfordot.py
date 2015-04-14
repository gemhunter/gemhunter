import sys,os
infile = sys.argv[1]
infile = "../" + infile
os.system("python ../src/parser.py "+infile)
outfile = infile[0:len(infile)-3]
outfile += ".dot"
outfile = outfile.split("/")[-1]
outfile = "../" + outfile
os.system("python ../scripts/getdot.py > "+outfile)
