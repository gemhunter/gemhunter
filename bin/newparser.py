#Generated parser

import yacc as yacc
import logging

# Get the token map from the lexer.  This is required.
from calclex import tokens
def p_expression(p):
	'''expression : expression PLUS term
	           | expression MINUS term
	           | term
	'''

def p_term(p):
	'''term : term TIMES factor
	     | term DIVIDE factor
	     | factor
	'''

def p_factor(p):
	'''factor : NUMBER
	       | LPAREN expression RPAREN'''


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
