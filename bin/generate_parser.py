#python script to obtain the yacc parser file from bnf file

def generate():
	parser = open("parser.py",'w')
	bnf = open("cfg.bnf")

	preamble = '''#Generated parser

import yacc as yacc
import sys
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
