#Generated parser

import yacc as yacc
import sys
import logging

# Get the token map from the lexer.  This is required.
from lexer import tokens
def p_program(p):
	'''program : compstmt
	'''

def p_compstmt(p):
	'''compstmt : stmts opt_terms
	'''

def p_stmts(p):
	'''stmts : none
		| stmt
		| stmts lin_terms stmt
	'''

def p_stmt(p):
	'''stmt : KEYWORD_END '{' compstmt '}'
		| KEYWORD_BEGIN '{' compstmt '}'	
		| expr
	'''

def p_expr(p):
	'''expr : l13_expr
	'''

def p_l13_expr(p):
	'''l13_expr : l13_expr OR l12_expr
		| l12_expr
	'''

def p_l12_expr(p):
	'''l12_expr : l12_expr AND l11_expr
		| l11_expr
	'''

def p_l11_expr(p):
	'''l11_expr : l10_expr op_eq l10_expr
		| l10_expr
	'''

def p_l10_expr(p):
	'''l10_expr : l10_expr op_order l9_expr
		| l9_expr
	'''

def p_l9_expr(p):
	'''l9_expr : l9_expr '|' l8_expr
		| l9_expr '^' l8_expr
		| l8_expr
	'''

def p_l8_expr(p):
	'''l8_expr : l8_expr '&' l7_expr
		| l7_expr
	'''

def p_l7_expr(p):
	'''l7_expr : l7_expr LSHIFT l6_expr
		| l7_expr RSHIFT l6_expr
		| l6_expr
	'''

def p_l6_expr(p):
	'''l6_expr : l6_expr '+' l5_expr
		| l6_expr '-' l5_expr
		| l5_expr
	'''

def p_l5_expr(p):
	'''l5_expr : l5_expr '*' l4_expr
		| l5_expr '/' l4_expr
		| l5_expr '%' l4_expr
		| l4_expr
	'''

def p_l4_expr(p):
	'''l4_expr : '-' l3_expr
		| l3_expr
	'''

def p_l3_expr(p):
	'''l3_expr : l2_expr POW l3_expr
		| l2_expr
	'''

def p_l2_expr(p):
	'''l2_expr : '!' l1_expr
		| '~' l1_expr
		| '+' l1_expr
		| l1_expr
	'''

def p_l1_expr(p):
	'''l1_expr : user_var
		| key_var
		| literal
		| '(' expr ')'
	'''

def p_opt_terms(p):
	'''opt_terms : none 
		| lin_terms
	'''

def p_lin_terms(p):
	'''lin_terms : lin_term 
		| lin_terms ';'
	'''

def p_lin_term(p):
	'''lin_term : ';' 
		| NEWLINE
	'''

def p_opt_nl(p):
	'''opt_nl : none
		| NEWLINE
	'''

def p_literal(p):
	'''literal : numeric 
		| CHAR 
		| STRING
	'''

def p_op_assign(p):
	'''op_assign : PLUSEQ
		| MINUSEQ
		| STAREQ
		| DIVEQ
		| MODEQ
		| POWEQ
	'''

def p_op_eq(p):
	'''op_eq : EQEQ
		| CASEEQ
		| NOTEQ
		| NOEQ
	'''

def p_op_order(p):
	'''op_order : '<'
		| '>'
		| GEQ
		| LEQ
	'''

def p_numeric(p):
	'''numeric : INT 
		| FLOAT
	'''

def p_user_var(p):
	'''user_var : LOCALVAR 
		| GLOBALVAR 
		| CLASSVAR 
		| INSTANCEVAR 
		| METHOD_ASSGN_VAR 
		| METHOD_ONLY_VAR 
		| CONST
	'''

def p_key_var(p):
	'''key_var : KEYWORD_NIL 
		| KEYWORD_SELF 
		| KEYWORD_FALSE 
		| KEYWORD_TRUE 
		| KEYWORD_FILE 
		| KEYWORD_LINE 
		| KEYWORD_ENCODING
	'''

def p_none(p):
	'''none : 
	'''


# Error rule for syntax errors
def p_error(p):
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
data+= "\n"
s.close()
result = parser.parse(data,debug=log)
	