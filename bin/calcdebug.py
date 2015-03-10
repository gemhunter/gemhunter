# Yacc example

import yacc as yacc
import logging

# Get the token map from the lexer.  This is required.
from calclex import tokens

def p_expression_plus(p):
    'expression : expression PLUS term'
    
def p_expression_minus(p):
    'expression : expression MINUS term'
    
def p_expression_term(p):
    'expression : term'
    
def p_term_times(p):
    'term : term TIMES factor'
    
def p_term_div(p):
    'term : term DIVIDE factor'
    
def p_term_factor(p):
    'term : factor'

def p_factor_num(p):
    'factor : NUMBER'

def p_factor_expr(p):
    'factor : LPAREN expression RPAREN'

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
