#python script to obtain the yacc parser file from bnf file

parser = open("newparser.py",'w')
bnf = open("cfg.bnf")

preamble = '''#Generated parser

import yacc as yacc
import logging

# Get the token map from the lexer.  This is required.
from lexer import tokens
'''

afterword = '''
# Error rule for syntax errors
def p_error(p):
    print "Syntax error in input!"

# Build the parser
logging.basicConfig(
    level = logging.DEBUG,
    filename = "parselog.txt",
    filemode = "w"
)

log = logging.getLogger()
parser = yacc.yacc()

while True:
   try:
       s = raw_input()
   except EOFError:
       break
   if not s: continue
   result = parser.parse(s,debug=log)
   #print result
'''
parser.write(preamble)

first = 1

for line in bnf:
    if line[0] == '#' or not line.rstrip():
        continue
    if ':' in line:
        if not first:
            parser.write("\t\'\'\'\n\n")
        else:
            first = 0
        lhs,rhs = line.split(' :')
        newrule = "def p_" + lhs + "(p):\n\t\'\'\'"
        parser.write(newrule)
        parser.write(line)
    elif line.rstrip():
        parser.write("\t")
        parser.write(line)

parser.write("\'\'\'\n\n")

parser.write(afterword)

parser.close()
bnf.close()
