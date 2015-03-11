#Generated parser

import yacc as yacc
import logging

# Get the token map from the lexer.  This is required.
from lexer import tokens
def p_program (p):
	'''program : compstmt
	'''

def p_compstmt (p):
	'''compstmt : stmts opt_terms
	'''

def p_stmts (p):
	'''stmts : none
		| stmt
		| stmts lin_terms stmt
	'''

def p_stmt (p):
	'''stmt : KEYWORD_END '{' compstmt '}'
		| KEYWORD_BEGIN '{' compstmt '}'	
		| command_assign
		| lhs op_assign command_call
		| expr
	'''

def p_command_assign (p):
	'''command_assign : lhs '=' command_call
		| lhs '=' command_assign
	'''

def p_expr (p):
	'''expr : command_call
		| '!' command_call
		| KEYWORD_NOT expr
		| expr KEYWORD_AND expr
		| expr KEYWORD_OR expr
		| arg
	'''

def p_command_call (p):
	'''command_call : 
	'''

def p_prime (p):
	'''prime : literal 
		| variable 
		| if_expr 
		| unless_expr 
		| case_expr 
		| while_expr 
		| until_expr 
		| for_expr 
		| yield_expr 
		| array_cons 
		| KEYWORD_BREAK 
		| KEYWORD_NEXT 
		| KEYWORD_REDO 
		| class_def 
		| method_def 
		| singleton_class_def 
		| singleton_method_def 
		| KEYWORD_BREAK 
		| KEYWORD_RETRY 
		| KEYWORD_REDO 
		| KEYWORD_NEXT 
		| KEYWORD_RETURN 
		| '(' compstmt ')' 
		| KEYWORD_DEFINED '(' expr ')' 
	'''

def p_class_def (p):
	'''class_def : 
	'''

def p_method_def (p):
	'''method_def : KEYWORD_END method_name 
	'''

def p_method_name (p):
	'''method_name : key_var 
		| LOCALVAR 
		| CONST 
	'''

def p_singleton_class_def (p):
	'''singleton_class_def : KEYWORD_CLASS LSHIFT expr 
	'''

def p_if_expr (p):
	'''if_expr : KEYWORD_IF expr then compstmt if_tail KEYWORD_END
	'''

def p_then (p):
	'''then : lin_ter 
		| KEYWORD_THEN 
		| term KEYWORD_THEN
	'''

def p_if_tail (p):
	'''if_tail : opt_else 
		| KEYWORD_ELSIF expr then compstmt if_tail
	'''

def p_opt_else (p):
	'''opt_else : KEYWORD_ELSE compstmt 
		| none
	'''

def p_unless_expr (p):
	'''unless_expr : KEYWORD_UNLESS expr then compstmt opt_else KEYWORD_END
	'''

def p_case_expr (p):
	'''case_expr : KEYWORD_CASE expr opt_terms case_body KEYWORD_END 
		| KEYWORD_CASE opt_terms case_body KEYWORD_END
	'''

def p_case_body (p):
	'''case_body : KEYWORD_WHEN args then compstmt cases
	'''

def p_cases (p):
	'''cases : opt_else 
		| case_body
	'''

def p_while_expr (p):
	'''while_expr : KEYWORD_WHILE expr do compstmt KEYWORD_END
	'''

def p_do (p):
	'''do : lin_ter 
		| KEYWORD_DO
	'''

def p_until_expr (p):
	'''until_expr : KEYWORD_UNTIL expr do compstmt KEYWORD_END
	'''

def p_for_expr (p):
	'''for_expr : KEYWORD_FOR for_var KEYWORD_IN expr do compstmt KEYWORD_END
	'''

def p_for_var (p):
	'''for_var : lhs 
		| mlhs
	'''

def p_yield_expr (p):
	'''yield_expr : KEYWORD_YIELD opt_call_args
	'''

def p_opt_call_args (p):
	'''opt_call_args : '(' ')' 
		| '(' call_args ')' 
		| none
	'''

def p_arg (p):
	'''arg : lhs '=' arg 
		| arg DOT2 arg 
		| arg DOT3 arg 
		| arg '+' arg 
		| arg '-' arg 
		| arg '*' arg 
		| arg '/' arg 
		|arg '%' arg 
		| arg POW arg 
		| '+' arg 
		| '-' arg 
		| arg '
		|' arg 
		| arg '^' arg 
		| arg '&' arg 
		| arg '>' arg 
		| arg '<' arg 
		| '!' arg 
		| '~' arg 
		| arg LEQ arg 
		| arg GEQ arg 
		| arg LSHIFT arg 
		| arg RSHIFT arg 
		| arg AND arg 
		| arg OR arg 
		| arg NOTEQ arg 
		| arg NOEQ arg 
		| arg EQEQ arg 
		| arg CASEEQ arg 
		| KEYWORD_DEFINED arg 
		| prime 
	'''

def p_	| arg '?' arg '(p):
	'''	| arg '?' arg ':' arg
	'''

def p_opt_terms (p):
	'''opt_terms : none 
		| lin_terms
	'''

def p_lin_terms (p):
	'''lin_terms : lin_term 
		| lin_terms ';'
	'''

def p_lin_term (p):
	'''lin_term : ';' 
		| NEWLINE
	'''

def p_opt_nl (p):
	'''opt_nl : none
		| NEWLINE
	'''

def p_literal (p):
	'''literal : numeric 
		| CHAR 
		| STRING
	'''

def p_op_assign (p):
	'''op_assign : PLUSEQ
		| MINUSEQ
		| STAREQ
		| DIVEQ
		| MODEQ
		| POWEQ
	'''

def p_numeric (p):
	'''numeric : INT 
		| FLOAT
	'''

def p_user_var (p):
	'''user_var : LOCALVAR 
		| GLOBALVAR 
		| CLASSVAR 
		| INSTANCEVAR 
		| METHOD_ASSGN_VAR 
		| METHOD_ONLY_VAR 
		| CONST
	'''

def p_key_var (p):
	'''key_var : KEYWORD_NIL 
		| KEYWORD_SELF 
		| KEYWORD_FALSE 
		| KEYWORD_TRUE 
		| KEYWORD_FILE 
		| KEYWORD_LINE 
		| KEYWORD_ENCODING
	'''

def p_none (p):
	'''none : 
'''


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
