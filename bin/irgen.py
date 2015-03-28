#!/usr/bin/python        

import sys
from termcolor import colored
import yacc
from lexer import tokens
import symbolTable
import threeAddressCode

#Parser instructions
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
	'''expr : assign_expr2
	'''
	p[0]=p[1]

########################
#Assignment Expressions#
########################

def p_assign_expr2(p):
	'''assign_expr2 : lhs op_assign assign_expr2
	| assign_expr1
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	p[0] = {
		'place' : 'undefined',
		'type' : 'TYPE_ERROR'
	}
        if p[3]['type'] == 'TYPE_ERROR':
                return
	if p[1]['place'] == None:
		error('Use of undeclared variable %s!'%p[1]['idenName'])
		return
        else:
                lhsIdentifier = ST.getIdentifier(p[1]['place'])
                if lhsIdentifier == None:
                        error('Can not use ' + p[1]['place'] + ' as lhs of an assignment')
                else:
                        lhsType = ST.getAttribute(lhsIdentifier,'type')
                        if lhsType != p[3]['type']:
                                error('Type mismatch in assignment and update to ' + p[1]['place'] + ' from ' + p[3]['place'])
                        else:
                                newPlace = ST.createTemp()
                                if lhsType == 'INT' and p[3]['type'] == 'INT' :
                                        TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2][0])
                                        TAC.emit(p[1]['place'], newPlace, '', '=')
                                        p[0] = p[1]
                                        p[0]['type'] = 'INT'
                                elif lhsType == 'FLOAT' and p[3]['type'] == 'FLOAT':
                                        TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2][0])
                                        TAC.emit(p[1]['place'], newPlace, '', '=')
                                        p[0] = p[1]
                                        p[0]['type'] = 'FLOAT'
                                else:
                                        error('Type Error (Expected floats or integers) '+p[1]['place']+','+p[3]['place']+'!')
                                

def p_assign_expr1(p):
	'''assign_expr1 : lhs '=' assign_expr1
	| range_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	p[0] = {
		'place' : 'undefined',
		'type' : 'TYPE_ERROR'
	}
        if p[3]['type'] == 'TYPE_ERROR':
                return
	if p[1]['place'] == None:
		myPlace = ST.createTemp()
		ST.addIdentifier(p[1]['idenName'],myPlace,p[3]['type'])
		TAC.emit(myPlace, p[3]['place'], '', '=')
		p[0] = p[3]
		p[0]['place'] = myPlace
	else:
                lhsIdentifier = ST.getIdentifier(p[1]['place'])
                if lhsIdentifier == None:
                        error('Can not use ' + p[1]['place'] + ' as lhs of an assignment')
                else:
                        if ST.getAttribute(lhsIdentifier,'type') != p[3]['type']:
                                error('Type mismatch in assignment to ' + p[1]['place'] + ' from ' + p[3]['place'])
                        else:
                                TAC.emit(p[1]['place'], p[3]['place'], '', '=')
                                p[0] = p[3]
                                p[0]['place'] = p[1]['place']

def p_range_expr(p):
	'''range_expr : l13_expr SEQIN l13_expr
	| l13_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return
	if p[1]['type'] == 'INT' and p[3]['type'] == 'INT' :
		p[0]['type'] = ('RANGE', p[1]['place'], p[3]['place'])
	else:
		error('Type Error (Expected Integers) '+p[1]['place']+','+p[3]['place']+'!')

############################
#Expressions with operators#
############################
def p_l13_expr(p):
	'''l13_expr : l13_expr OR l12_expr
	| l12_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return
	if p[1]['type'] == 'BOOL' and p[3]['type'] == 'BOOL' :
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
		p[0]['type'] = 'BOOL'
	else:
		error('Type Error (Expected booleans) '+p[1]['place']+','+p[3]['place']+'!')

def p_l12_expr(p):
	'''l12_expr : l12_expr AND l11_expr
	| l11_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return
	if p[1]['type'] == 'BOOL' and p[3]['type'] == 'BOOL' :
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
		p[0]['type'] = 'BOOL'
	else:
		error('Type Error (Expected booleans) '+p[1]['place']+','+p[3]['place']+'!')

def p_l11_expr(p):
	'''l11_expr : l10_expr op_eq l10_expr
	| l10_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return	
	if p[1]['type'] != p[3]['type']:
		if p[2] == '==' :
			warning('Did you intend to equate different types? '+p[1]['place'] + ',' + p[3]['place'])
			TAC.emit(newPlace,'false','','=')
			p[0]['type']='BOOL'
		else:
			warning('Did you intend to equate different types? '+p[1]['place'] + ',' + p[3]['place'])
			TAC.emit(newPlace,'true','','=')
			p[0]['type']='BOOL'
	else:
		if p[1]['type'] == 'INT' and p[3]['type'] == 'INT':
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type']='BOOL'
		elif p[1]['type'] == 'FLOAT' and p[3]['type'] == 'FLOAT':
			warning('Equating floats might not be a good idea! ' + p[1]['place'] + ',' + p[3]['place'])
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type']='BOOL'
		elif p[1]['type'] == 'CHAR' and p[3]['type'] == 'CHAR':
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type']='BOOL'
		elif p[1]['type'] == 'BOOL' and p[3]['type'] == 'BOOL':
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type']='BOOL'
		elif p[1]['type'] == 'STRING' and p[3]['type'] == 'STRING':
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type']='BOOL'
		elif p[1]['type'] == 'VOID' and p[3]['type'] == 'VOID':
			if p[2] == '==' :
				TAC.emit(newPlace,'true','','=')
			else:
				TAC.emit(newPlace,'false','','=')
				p[0]['type']='BOOL'
		else:
			error('Cannot equate these two! ' + p[1]['place'] + ',' + p[3]['place'])

def p_l10_expr(p):
	'''l10_expr : l10_expr op_order l9_expr
	| l9_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return	
	if p[1]['type'] == 'INT' and p[3]['type'] == 'INT' :
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
		p[0]['type'] = 'BOOL'
	elif p[1]['type'] == 'FLOAT' and p[3]['type'] == 'FLOAT':
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
		p[0]['type'] = 'BOOL'
	else:
		error('Type Error (Expected floats or integers) '+p[1]['place']+','+p[3]['place']+'!')

def p_l9_expr(p):
	'''l9_expr : l9_expr '|' l8_expr
	| l9_expr '^' l8_expr
	| l8_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return

	if p[1]['type'] == 'INT' and p[3]['type'] == 'INT' :
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
		p[0]['type'] = 'INT'
	elif p[1]['type'] == 'FLOAT' and p[3]['type'] == 'FLOAT':
		warning('Are you sure you want to use bitwise operator on floating points ' + p[1]['place'] + ',' + p[3]['place'] + '?')
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
		p[0]['type'] = 'FLOAT'
	else:
		error('Type Error (Expected floats or integers) '+p[1]['place']+','+p[3]['place']+'!')

def p_l8_expr(p):
	'''l8_expr : l8_expr '&' l7_expr
	| l7_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return

	if p[1]['type'] == 'INT' and p[3]['type'] == 'INT' :
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
		p[0]['type'] = 'INT'
	elif p[1]['type'] == 'FLOAT' and p[3]['type'] == 'FLOAT':
		warning('Are you sure you want to use bitwise operator on floating points? ' + p[1]['place'] + ',' + p[3]['place'] + '?')
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
		p[0]['type'] = 'FLOAT'
	else:
		error('Type Error (Expected floats or integers) '+p[1]['place']+','+p[3]['place']+'!')

def p_l7_expr(p):
	'''l7_expr : l7_expr LSHIFT l6_expr
	| l7_expr RSHIFT l6_expr
	| l6_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return
	if p[3]['type'] != 'INT' :
		error('Type Error (Expected Integer) %s!'%p[3]['place'])
		return
	if p[1]['type'] == 'INT' :
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
		p[0]['type'] = 'INT'
	elif p[1]['type'] == 'FLOAT' :
		warning('Are you sure you want to bit shift floating point? %s'%p[1]['place'])
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
		p[0]['type'] = 'FLOAT'
	else:
		error('Type Error (Expected Integer or Float) %s!'%p[1]['place'])

def p_l6_expr(p):
	'''l6_expr : l6_expr '+' l5_expr
	| l6_expr '-' l5_expr
	| l5_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return
	if p[2] == '+':
		if p[1]['type'] == 'INT' and p[3]['type'] == 'INT' :
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type'] = 'INT'
		elif p[1]['type'] == 'FLOAT' and p[3]['type'] == 'FLOAT':
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type'] = 'FLOAT'
		else:
			error('Type Error (Expected floats or integers) '+p[1]['place']+','+p[3]['place']+'!')
	elif p[2] == '-':
		if p[1]['type'] == 'INT' and p[3]['type'] == 'INT' :
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type'] = 'INT'
		elif p[1]['type'] == 'FLOAT' and p[3]['type'] == 'FLOAT':
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type'] = 'FLOAT'
		else:
			error('Type Error (Expected floats or integers) '+p[1]['place']+','+p[3]['place']+'!')

def p_l5_expr(p):
	'''l5_expr : l5_expr '*' l4_expr
	| l5_expr '/' l4_expr
	| l5_expr '%' l4_expr
	| l4_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return
	if p[2] == '*':
		if p[1]['type'] == 'INT' and p[3]['type'] == 'INT' :
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type'] = 'INT'
		elif p[1]['type'] == 'FLOAT' and p[3]['type'] == 'FLOAT':
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type'] = 'FLOAT'
		else:
			error('Type Error (Expected floats or integers) '+p[1]['place']+','+p[3]['place']+'!')
	elif p[2] == '/' :
		if p[1]['type'] == 'INT' and p[3]['type'] == 'INT' :
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type'] = 'INT'
		elif p[1]['type'] == 'FLOAT' and p[3]['type'] == 'FLOAT':
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type'] = 'FLOAT'
		else:
			error('Type Error (Expected floats or integers) '+p[1]['place']+','+p[3]['place']+'!')
	elif p[2] == '%':
		if p[1]['type'] == 'INT' and p[3]['type'] == 'INT' :
			TAC.emit(newPlace,p[1]['place'],p[3]['place'],p[2])
			p[0]['type'] = 'INT'
		else:
			error('Type Error (Expected integers) '+p[1]['place']+','+p[3]['place']+'!')

def p_l4_expr(p):
	'''l4_expr : '-' l3_expr
	| l3_expr
	'''
	if len(p) == 2:
		p[0]= p[1]
		return
	#Unary minus
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[2]['type']=='TYPE_ERROR':
		return
	if p[2]['type'] == 'INT' :
		TAC.emit(newPlace,p[2]['place'],'','-')
		p[0]['type'] = 'INT'
	elif p[2]['type'] == 'FLOAT' :
		TAC.emit(newPlace,p[2]['place'],'','-')
		p[0]['type'] = 'FLOAT'
	else:
		error('Type Error (Expected Integer or Float) %s!'%p[2]['place'])

def p_l3_expr(p):
	'''l3_expr : l2_expr POW l3_expr
	'''
	#Exponentiation
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[3]['type']=='TYPE_ERROR':
		return
	if p[3]['type'] != 'INT' :
		error('Type Error (Expected Integer) %s!'%p[3]['place'])
		return

	if p[1]['type'] == 'INT' :
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],'**')
		p[0]['type'] = 'INT'
	elif p[1]['type'] == 'FLOAT' :
		TAC.emit(newPlace,p[1]['place'],p[3]['place'],'**')
		p[0]['type'] = 'FLOAT'
	else:
		error('Type Error (Expected Integer or Float) %s!'%p[1]['place'])

def p_le_expr_down(p):
	'''l3_expr : l2_expr
	'''
	p[0]=p[1]

def p_l2_expr(p):
	'''l2_expr : '!' l1_expr
	| '~' l1_expr
	| '+' l1_expr
	'''
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[2]['type']=='TYPE_ERROR':
		return
	if p[1] == '!' :
		#Boolean not
		if p[2]['type'] == 'BOOL' :
			TAC.emit(newPlace,p[2]['place'], '', '!')
			p[0]['type'] = 'BOOL'
		else:
			error('Type Error (Expected Boolean) %s!'%p[2]['place'])
	elif p[1] == '~':
		#Bitwise Complement
		if p[2]['type'] == 'FLOAT':
			warning('Bitwise complement of float usually doesn\'t make sense %s'%p[2]['place'])
			TAC.emit(newPlace,p[2]['place'],'','~')
			p[0]['type'] = 'FLOAT'
		elif p[2]['type'] == 'INT' :
			TAC.emit(newPlace,p[2]['place'],'','~')
			p[0]['type'] = 'INT'
		else:
			error('Type Error (Expected Integer or float) %s!'%p[2]['place'])
	elif p[1] == '+':
		#Unary plus
		if p[2]['type'] == 'FLOAT':
			TAC.emit(newPlace,p[2]['place'],'','+')
			p[0]['type'] = 'FLOAT'
		elif p[2]['type'] == 'INT' :
			TAC.emit(newPlace,p[2]['place'],'','+')
			p[0]['type'] = 'INT'
		else:
			error('Type Error (Expected Integer or float) %s!'%p[2]['place'])

def p_l2_expr_down(p):
	'''l2_expr : l1_expr
	'''
	p[0]=p[1]

def p_l1_expr(p):
	'''l1_expr : primary_expr
	'''
	#Too Easy!
	p[0] = p[1]

#####################
#Primary expressions#
#####################
def p_primary_expr_primitive_variable(p):
	''' primary_expr : user_var
	'''
	p[0] = {
		'place' : 'undefined',
		'type' : 'TYPE_ERROR'
	}
	if ST.lookupIdentifier(p[1]['idenName']) :
		p[0]['place'] = ST.getAttribute(p[1]['idenName'],'place')
		p[0]['type'] = ST.getAttribute(p[1]['idenName'],'type')
		assert(p[0]['place'] != None)
		assert(p[0]['type'] != None)
	else:
		error("Use of undefined variable %s!"%p[1]['idenName'])

def p_primary_expr_primitive_literals(p):
	''' primary_expr : key_var
	| literal
	'''
	newPlace = ST.createTemp()
	TAC.emit(newPlace,p[1]['value'],'','=')
	p[0] = {
		'place' : newPlace,
		'type' : p[1]['type']
	}

#TODO
def p_primary_expr(p):
	''' primary_expr : '(' expr ')'
	| '[' arg_list ']'
	| primary_expr '[' expr ']'
	| primary_expr '.' LOCALVAR
	| primary_expr '.' CONST
	'''
	if p[1] == '(':
		p[0] = p[2]

#TODO
def p_primary_expr_method_call(p):
	''' primary_expr : method_call
	'''

###################
#Method Invocation#
###################
def p_method_call(p):
	''' method_call : primary_expr '.'  method args
	| method args
	| primary_expr '.' method_var '{' '|' block_param_list '|' compstmt '}' 
	| method_var '{' '|' block_param_list '|' compstmt '}' 
	| KEYWORD_SUPER
	| KEYWORD_SUPER args
	'''

###################
#lhs of expression#
###################
def p_lhs_var(p):
	'''lhs : user_var
	'''
	myPlace = ST.getAttribute(p[1]['idenName'],'place')
	if myPlace != None:
		p[0] = {
			'place' : myPlace
		}
	else:
		p[0] = {
			'place' : None,
			'idenName' : p[1]['idenName']
		}

#TODO
def p_lhs_dot(p):
	'''lhs : primary_expr '.' LOCALVAR
	| primary_expr '.' CONST
	'''

#TODO	
def p_lhs_array(p):
	''' lhs : primary_expr '[' expr ']'
	'''

###########
#Arguments#
###########
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

##############
#If statement#
##############

def p_if_block(p):
	'''if_block : KEYWORD_IF expr then_clause M_if1 compstmt M_if2 if_tail M_if3 KEYWORD_end
	'''

def p_makeIfLabels(p):
	''' M_if1 :
	'''
	label1 = TAC.makeLabel()
	label2 = TAC.makeLabel()
	label3 = TAC.makeLabel()
	p[0]=[label1,label2,label3]
	TAC.emit('if', p[-2]['place'], 'goto', label1)
	TAC.emit('goto', label2, '', '')
	TAC.emit('label', label1, '', '')

def p_startIfTail(p):
	''' M_if2 : 
	'''
	TAC.emit('goto', p[-2][2], '', '')
	TAC.emit('label', p[-2][1], '', '')

def p_endIf(p):
	''' M_if3 :
	'''
	TAC.emit('label', p[-4][2], '', '')

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

#############
#Until block#
#############
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
	global currLine
	if p[1] != ';':
		currLine+=1

###########
#Operators#
###########
def p_op_assign(p):
	'''op_assign : PLUSEQ
	| MINUSEQ
	| STAREQ
	| DIVEQ
	'''
	p[0]=p[1]

def p_op_eq(p):
	'''op_eq : EQEQUAL
	| NOTEQ
	'''
	p[0] = p[1]

def p_op_order(p):
	'''op_order : '<'
	| '>'
	| GTEQUAL
	| LTEQUAL
	'''
	p[0]= p[1]

##################
#Method Variables#
##################
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
	p[0] = {
		'methodName' : p[1]
	}

##################
#Base Expressions#
##################
def p_user_var(p):
	'''user_var : LOCALVAR 
	| GLOBALVAR 
	| CLASSVAR 
	| INSTANCEVAR 
	| METHOD_ONLY_VAR 
	| CONST
	'''
	p[0] = {
		'idenName' : p[1]
	}

##################
#Keyword Literals#
##################
#TODO
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
	p[0] = {
		'type' : 'VOID',
		'value' : 'nil'
	}

def p_key_var_TRUE(p):
	'''key_var : KEYWORD_TRUE
	'''
	p[0] = {
		'type' : 'BOOL',
		'value' : 'true'
	}

def p_key_var_FALSE(p):
	'''key_var : KEYWORD_FALSE
	'''
	p[0] = 	{
		'type' : 'BOOL',
		'value' : 'false'
	}

##########
#Literals#
##########
def p_literal_numeric(p):
	''' literal : numeric
	'''
	p[0] = p[1]

def p_literal_char(p):
	''' literal : CHAR 
	'''
	p[0] = {
		'type' : 'CHAR',
		'value' : p[1]
	}

def p_literal_string(p):
	''' literal : STRING
	'''
	p[0] = {
		'type' : 'STRING',
		'value' : p[1]
	}

def p_numeric_int(p):
	'''numeric : INT
	'''
	p[0] = {
		'type' : 'INT',
		'value' : p[1]
	}

def p_numeric_float(p):
	'''numeric : FLOAT
	'''
	p[0] = {
		'type' : 'FLOAT',
		'value' : p[1]
	}

def p_none(p):
	'''none : 
		'''

# Error rule for syntax errors
def p_error(p):
	if p == None:
		error("You missed something at the end")
	else:
		error("Syntax error!")

#Error handler
def error(e):
	global success
	print colored("ERROR::%d : "%currLine,'red'),e
	success = 0

def warning(w):
	print colored("WARNING::%d : "%currLine,'blue'),w

#Declare globals
ST = symbolTable.SymbolTable()
TAC = threeAddressCode.ThreeAddressCode()
currLine = 1
success = 1

# Build the parser
parser = yacc.yacc(debug=0)

#Read the input file
s = open(sys.argv[1],'r')
data = s.read()
data+= "\n"
s.close()

#Parse it!
parser.parse(data)

#Parsing success?
if success == 1:
	print colored("Successfully Compiled", 'green')

#Output it to file for now
infile = sys.argv[1]
outfile = infile[0:len(infile)-3]
outfile+=".tac"
outfile = outfile.split("/")[-1]
outfile = "output"
sys.stdout = open(outfile,"w")
TAC.printCode()
