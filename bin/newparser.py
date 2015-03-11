#Generated parser

import yacc as yacc
import logging

# Get the token map from the lexer.  This is required.
from lexer import tokens
def p_program(p):
	'''program : LOCALVAR'''


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
