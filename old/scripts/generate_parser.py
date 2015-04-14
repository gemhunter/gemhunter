#python script to obtain the yacc parser file from bnf file

import sys

def generate():
	parser = open("parser.py",'w')
	bnf = open(sys.argv[1])

	preamble = '''#!/usr/bin/python        
#Generated parser

import sys
import yacc
import logging

# Get the token map from the lexer.  This is required.
from lexer import tokens
'''

	afterword = '''
# Error rule for syntax errors
def p_error(p):
    if p == None:
    	print "You missed something at the end"
    else:
	print "Syntax error in input line %d!"%p.lineno

# Build the parser
logging.basicConfig(
    level = logging.DEBUG,
    filename = "parselog.txt",
    filemode = "w"
)

log = logging.getLogger()
parser = yacc.yacc()

s = open(sys.argv[1],'r')
data = s.read()
data+= "\\n"
s.close()
result = parser.parse(data,debug=log)


import re
from collections import defaultdict

#obtain the lines with the productions used
outfile = open("actions.txt",'w')
with open("parselog.txt") as f:
    for line in f:
        if re.match("INFO:root:Action(.*)", line):
            outfile.write(line)


#clean the productions to give the required information
infile = "actions.txt"
outfile = "treefile.txt"

delete_list2 = ["rule [","] with"]

fin = open(infile)
fout = open(outfile, "w+")
for line in fin:
   matches = re.findall('rule \[(.*)\] with', line)
   #for word in delete_list2:
   #    matches[0] = matches[0].replace(word, "")
   fout.write(matches[0])
   #line = line[1:len(line)-2]
   #fout.write(line)	
   fout.write("\\n")
fin.close()
fout.close()



#use the clean productions and build the dot file
nodes = defaultdict(list)
#nodes = dict()
nodeNum = 1

infile = sys.argv[1]
outfile = infile[0:len(infile)-3]
outfile+=".dot"
outfile = outfile.split("/")[-1]

fout = open(outfile,"w")

fout.write("""digraph G {
graph [ordering="out"];
""")
fout.write("\\n")

for line in open("treefile.txt"):
    columns = line.split(" ")
    fout.write("node%d [ label = \\"%s\\" ]; " % (nodeNum,columns[0]))
    fout.write("\\n")
    lhsNum = nodeNum
    nodeNum += 1
    edges = []
    for i in range(1,len(columns)-1):
        i = len(columns)  - i
        columns[i] = columns[i].rstrip()
        edge = ""
        if columns[i] in nodes:
            edge += "node" + str(lhsNum) + " -> node" + str(nodes[columns[i]].pop(len(nodes[columns[i]])-1)) + ";"
            if len(nodes[columns[i]]) == 0:
                   del nodes[columns[i]]
        else:
            fout.write("node%d [ label = \\"Token \\n %s\\" ]; " % (nodeNum,columns[i]))
            fout.write("\\n")
            edge += "node" + str(lhsNum) + " -> node" + str(nodeNum) + ";"
            #print "node%d -> node%d;" %(lhsNum,nodeNum)
            nodeNum += 1
        edges.append(edge)
    nodes[columns[0]].append(lhsNum)
    while edges:
       fout.write(edges.pop(len(edges)-1))
       fout.write("\\n")

fout.write( "}" )
fout.write("\\n")
fout.close()
	'''
	parser.write(preamble)

	first = 1

	for line in bnf:
	    if line[0] == '#' or not line.rstrip():
		continue
	    if ' :' in line:
		if not first:
		    parser.write("\t\'\'\'\n\n")
		else:
		    first = 0
		lhs = line.split(' :',1)[0]
		newrule = "def p_" + lhs + "(p):\n\t\'\'\'"
		parser.write(newrule)
		parser.write(line)
	    elif line.strip():
		parser.write("\t")
		parser.write(line)

	parser.write("\t\'\'\'\n\n")

	parser.write(afterword)

	parser.close()
	bnf.close()

generate()
