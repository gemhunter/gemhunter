#!/usr/bin/python        

import sys
import yacc
from lexer import tokens
import symbolTable
import threeAddressCode

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
	| case_block
	| for_block
	| while_block
	| KEYWORD_RETURN expr
	| KEYWORD_YIELD args
	| KEYWORD_RETURN
	| KEYWORD_BREAK
	| KEYWORD_NEXT
	| KEYWORD_REDO
	| method_defn
	| class_defn
	| singleton_class_defn
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

def p_primary_expr_primitive(p):
	''' primary_expr : user_var
	| key_var
	| literal
	'''


def p_primary_expr(p):
	''' primary_expr : '(' expr ')'
	| '[' arg_list ']'
	| primary_expr '[' expr ']'
	| primary_expr '.' LOCALVAR
	| primary_expr '.' CONST
	'''


def p_primary_expr_method_call(p):
	''' primary_expr : method_call
	'''

def p_method_call(p):
	''' method_call : primary_expr '.'  method args
	| method args
	| primary_expr '.' method_var '{' '|' block_param_list '|' compstmt '}' 
	| method_var '{' '|' block_param_list '|' compstmt '}' 
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

def p_non_empty_arg_list(p):
	'''non_empty_arg_list : expr 	
	| expr ',' arg_list_tail
	'''

def p_arg_list_tail(p):
	'''arg_list_tail : expr ',' arg_list_tail
	| expr
	'''

def p_if_block(p):
	'''if_block : KEYWORD_IF expr then_clause compstmt if_tail KEYWORD_end
	'''

def p_then_clause(p):
	'''then_clause : KEYWORD_THEN
	| lin_term 
	| lin_term KEYWORD_THEN
	'''

def p_if_tail(p):
	'''if_tail : opt_else
	| KEYWORD_ELSIF expr then_clause compstmt if_tail
	'''

def p_opt_else(p):
	'''opt_else : KEYWORD_ELSE compstmt
	| none
	'''

def p_until_block(p):
	'''until_block : KEYWORD_UNTIL expr do_clause compstmt KEYWORD_end
	'''

def p_do_clause(p):
	'''do_clause : lin_term
	| lin_term KEYWORD_DO
	| KEYWORD_DO
	'''

def p_unless_block(p):
	'''unless_block : KEYWORD_UNLESS expr then_clause compstmt opt_else KEYWORD_end
	'''

def p_while_block(p):
	'''while_block : KEYWORD_WHILE expr do_clause compstmt KEYWORD_end
	'''

def p_case_block(p):
	'''case_block : KEYWORD_CASE expr opt_terms case_body KEYWORD_end
	'''

def p_case_body(p):
	'''case_body : KEYWORD_WHEN non_empty_arg_list then_clause compstmt case_clause   
	'''

def p_case_clause(p):
	'''case_clause : opt_else 
	| case_body
	'''

def p_for_block(p):
	'''for_block : KEYWORD_FOR lhs KEYWORD_IN expr do_clause compstmt KEYWORD_end
	'''

def p_class_defn(p):
	'''class_defn : KEYWORD_CLASS CONST opt_inheritance lin_term compstmt KEYWORD_end
	'''

def p_opt_inheritance(p):
	'''opt_inheritance : none
	| '<' primary_expr
	'''

def p_singleton_class_defn(p):
	'''singleton_class_defn : KEYWORD_CLASS LSHIFT singleton_var lin_term compstmt KEYWORD_end
	'''

def p_method_defn(p):
	'''method_defn : KEYWORD_DEF method_var method_params lin_term compstmt KEYWORD_end
	'''

def p_method_params(p):
	'''method_params : none 
	| '(' param_list  ')'
	'''

def p_param_list(p):
	'''param_list : none
	| non_empty_param_list
	'''

def p_non_empty_param_list(p):
	'''non_empty_param_list : LOCALVAR
	| LOCALVAR '=' expr ',' optional_param_list_tail
	| LOCALVAR '=' expr
	| LOCALVAR ',' non_empty_param_list
	'''

def p_optional_param_list_tail(p):
	'''optional_param_list_tail : LOCALVAR '=' expr
	| optional_param_list_tail ',' LOCALVAR '=' expr
	'''

def p_block_param_list(p):
	'''block_param_list : none
	| LOCALVAR
	| LOCALVAR ',' block_param_list_tail
	'''

def p_block_param_list_tail(p):
	'''block_param_list_tail : LOCALVAR
	| block_param_list_tail ',' LOCALVAR
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

def p_method(p):
	'''method : method_var
	| KEYWORD_CLASS
	| KEYWORD_NEXT
	'''

def p_singleton_var(p):
	'''singleton_var : LOCALVAR
	| CONST
	| KEYWORD_SELF
	'''

def p_method_var(p):
	'''method_var : LOCALVAR
	| METHOD_ONLY_VAR
	| CONST
	'''
	p[0] = 
	{
		'methodName' : p[1]
	}

def p_user_var(p):
	'''user_var : LOCALVAR 
	| GLOBALVAR 
	| CLASSVAR 
	| INSTANCEVAR 
	| METHOD_ONLY_VAR 
	| CONST
	'''
	p[0] = 
	{
		'idenName' : p[1]
	}

def p_key_var(p):
	'''key_var : KEYWORD_SELF 
	| KEYWORD_FILE 
	| KEYWORD_LINE 
	| KEYWORD_ENCODING
	| DOL0
	'''

def p_key_var_NIL(p):
	'''key_var : KEYWORD_NIL 
	'''
	p[0] = 
	{
		'type' : 'VOID',
		'value' : 'nil'
	}

def p_key_var_TRUE(p):
	'''key_var : KEYWORD_TRUE
	'''
	p[0] = 
	{
		'type' : 'BOOL',
		'value' : 'true'
	}

def p_key_var_FALSE(p):
	'''key_var : KEYWORD_FALSE
	'''
	p[0] = 
	{
		'type' : 'BOOL',
		'value' : 'true'
	}

def p_literal_numeric(p):
	''' literal : numeric
	'''
	p[0] = p[1]

def p_literal_char(p):
	''' literal : CHAR 
	'''
	p[0] = 
	{
		'type' : 'CHAR',
		'value' : p[1]
	}

def p_literal_string(p):
	''' literal : STRING
	'''
	p[0] = 
	{
		'type' : 'STRING',
		'value' : p[1]
	}

def p_numeric_int(p):
	'''numeric : INT
	'''
	p[0] = 
	{
		'type' : 'INT',
		'value' : p[1]
	}

def p_numeric_float(p):
	'''numeric : FLOAT
	'''
	p[0] = 
	{
		'type' : 'FLOAT',
		'value' : p[1]
	}

def p_none(p):
	'''none : 
	'''

# Error rule for syntax errors
def p_error(p):
	if p == None:
		print "You missed something at the end"
	else:
		print "Syntax error in input line %d!"%p.lineno

#Declare global Symbol Table and TAC
ST = symbolTable.SymbolTable()
TAC = threeAddressCode.ThreeAddressCode()

# Build the parser
parser = yacc.yacc(debug=0)

#Read the input file
s = open(sys.argv[1],'r')
data = s.read()
data+= "\n"
s.close()

#Parse it!
parser.parse(data)
TAC.printCode()
