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
		| if_block
		| until_block
		| unless_block
		| which_block
		| case_block
		| KEYWORD_RETURN arg_list
		| expr
	'''

def p_expr(p):
	'''expr : assign_expr4
	'''

def p_assign_expr4(p):
	'''assign_expr4 : lhs bool_assign assign_expr4
		| assign_expr3
	'''

def p_assign_expr3(p):
	'''assign_expr3 : lhs shift_assign assign_expr3
		| assign_expr2
	'''

def p_assign_expr2(p):
	'''assign_expr2 : lhs op_assign assign_expr2
		| assign_expr1
	'''

def p_assign_expr1(p):
	'''assign_expr1 : lhs '=' assign_expr1
		| range_expr
	'''

def p_range_expr(p):
	'''range_expr : l13_expr SEQIN l13_expr
		| l13_expr SEQEX l13_expr
		| l13_expr
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
	'''l1_expr : primary_expr
	'''

def p_primary_expr(p):
	'''primary_expr : '(' expr ')'
		| user_var
		| key_var
		| literal
		| '[' ']'
		| '[' expr ']'
		| primary_expr '[' expr ']'
		| primary_expr '.' method_var
		| method_call
	'''

def p_method_call(p):
	'''method_call : primary_expr '.'  method_var args
		| method_var args
		| KEYWORD_SUPER
		| KEYWORD_SUPER args
	'''

def p_lhs(p):
	'''lhs : user_var
		| primary_expr '.' LOCALVAR
		| primary_expr '.' CONST
		| primary_expr '[' expr ']'
	'''

def p_args(p):
	'''args :  '(' arg_list ')'
	'''

def p_arg_list(p):
	'''arg_list : none
		| expr ',' arg_list_tail
		| expr
	'''

def p_arg_list_tail(p):
	'''arg_list_tail : expr ',' arg_list_tail
		| expr
	'''

def p_opt_terms(p):
	'''opt_terms : none 
		| lin_terms
	'''

def p_lin_terms(p):
	'''lin_terms : lin_term 
		| lin_terms lin_term
	'''

def p_lin_term(p):
	'''lin_term : ';' 
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
	'''op_eq : EQEQUAL
		| CASEEQ
		| NOTEQ
		| NOEQ
	'''

def p_op_order(p):
	'''op_order : '<'
		| '>'
		| GTEQUAL
		| LTEQUAL
	'''

def p_shift_assign(p):
	'''shift_assign : LSHIFTEQ
		| RSHIFTEQ
	'''

def p_bool_assign(p):
	'''bool_assign : ANDEQ
		| OREQ
		| BITANDEQ
		| BITOREQ
		| BITNOTEQ
	'''

def p_numeric(p):
	'''numeric : INT 
		| FLOAT
	'''

def p_method_var(p):
	'''method_var : LOCALVAR
		| METHOD_ONLY_VAR
		| CONST
	'''

def p_user_var(p):
	'''user_var : LOCALVAR 
		| GLOBALVAR 
		| CLASSVAR 
		| INSTANCEVAR 
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
		| DOL0
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
	