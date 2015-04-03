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

##################################
#compstmts for different contexts#
##################################

def p_compstmt(p):
	'''compstmt : stmts opt_terms
	'''

def p_stmts(p):
	'''stmts : stmt
	| stmts lin_terms stmt
	| none
	'''

def p_method_defn_compstmt(p):
	'''method_defn_compstmt : method_defn_stmts opt_terms
	'''
	p[0] = p[1]

def p_method_defn_stmts(p):
	'''method_defn_stmts : method_defn_stmt
	| method_defn_stmts lin_terms method_defn_stmt
	| none
	'''
	#Merge the returns here (check if they are of same type)
	if len(p) == 2:
		p[0] = p[1]
		return
	p[0] = merge_returns(p[1],p[3])

def p_class_defn_compstmt(p):
	'''class_defn_compstmt : class_defn_stmts opt_terms
	'''

def p_class_defn_stmts(p):
	'''class_defn_stmts : class_defn_stmt
	| class_defn_stmts lin_terms class_defn_stmt
	| none
	'''

def p_imp_body_compstmt(p):
	'''imp_body_compstmt : imp_body_stmts opt_terms
	'''
	p[0] = p[1]

def p_imp_body_stmts(p):
	'''imp_body_stmts : imp_body_stmt
	| imp_body_stmts lin_terms imp_body_stmt
	| none
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	p[0] = merge_patches(p[1],p[3])
	r = merge_returns(p[1],p[3])
	p[0].update(r)

####################
#Combined Statments#
####################
def p_stmt(p):
	'''stmt : method_defn
	| class_defn
	| expr
	| stmt_imp
	'''
	#Check for wrong breaks etc.
	p[0] = p[1]
	if p[0].get('breakList') != None:
		for i in p[0]['breakList']:
			error('Cannot use break outside loop', i[0])
	
	if p[0].get('nextList') != None:
		for i in p[0]['nextList']:
			error('Cannot use next outside loop', i[0])
	
	if p[0].get('redoList') != None:
		for i in p[0]['redoList']:
			error('Cannot use redo outside loop', i[0])

def p_method_defn_stmt(p):
	'''method_defn_stmt : expr
	| stmt_imp
	| stmt_method
	| method_defn
	'''
	#Check for wrong breaks etc.
	p[0] = p[1]
	if p[0].get('breakList') != None:
		for i in p[0]['breakList']:
			error('Cannot use break outside loop', i[0])
	
	if p[0].get('nextList') != None:
		for i in p[0]['nextList']:
			error('Cannot use next outside loop', i[0])
	
	if p[0].get('redoList') != None:
		for i in p[0]['redoList']:
			error('Cannot use redo outside loop', i[0])

def p_class_defn_stmt(p):
	'''class_defn_stmt : method_defn
	| expr
	'''

def p_imp_body_stmt(p):
	'''imp_body_stmt : stmt_loop
	| expr
	| stmt_imp
	| stmt_method
	'''
	p[0] = p[1]

###############################
#Different types of statements#
###############################

def p_stmt_imp(p):
	'''stmt_imp :  if_block
	| until_block
	| case_block
	| for_block
	| while_block
	'''
	p[0] = p[1]

def p_stmt_method(p):
	'''stmt_method : KEYWORD_RETURN expr
	| KEYWORD_YIELD '(' arg_list ')'
	| KEYWORD_RETURN
	'''
	#Pass the return argument above
	if len(p) == 2:
		newPlace = ST.createTemp()
		TAC.emit(newPlace,'nil','','=')
		TAC.emit('return', newPlace, '', '')
		p[0] = { 'retType' : 'VOID' }
	else:
		TAC.emit('return', p[2]['place'], '', '')
		p[0] = { 'retType' : p[2]['type'] }

def p_stmt_loop(p):
	'''stmt_loop : KEYWORD_BREAK
	| KEYWORD_NEXT
	| KEYWORD_REDO
	'''
	global currLine
	p[0] = {}
	TAC.emit('goto', '', '', '')
	if p[1] == 'break':
		p[0]['breakList'] = [(currLine,TAC.getCurrQuad())] 
	elif p[1] == 'next':
		p[0]['nextList'] = [(currLine,TAC.getCurrQuad())] 
	elif p[1] == 'redo':
		p[0]['redoList'] = [(currLine,TAC.getCurrQuad())] 

############
#Expression#
############
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
        if ST.currentlyInAClass() and p[1]['idenName'][:2] != '@@':
                error('Can\'t assign to non-class variables in a class')
                return
        if not ST.currentlyInAClass() and p[1]['idenName'][:2] == '@@':
                error('Can\'t assign class variables outside a class')
                return
	    
	if p[1]['idenName'][:2] == '@@' and ST.currentlyInAClass():
		p[1]['idenName'] += '#' + ST.getClass()
			
	if p[1]['idenName'][0] == '@' and p[1]['idenName'][1] != '@':
		error('Sorry, we do not allow compound assignment with instance variables (%s)'%p[1]['idenName'])
		return

        if not ST.lookupIdentifier(p[1]['idenName']):
                error('Use of undeclared variable %s!'%p[1]['idenName'])
		return
	else:
		lhsIdentifier = p[1]['idenName']
                lhsType = ST.getAttribute(lhsIdentifier,'type')
                lhsPlace = ST.getAttribute(lhsIdentifier,'place')
                if lhsType != p[3]['type']:
			error('Type mismatch in assignment and update to ' + p[1]['place'] + ' from ' + p[3]['place'])
		else:
			newPlace = ST.createTemp()
			if lhsType == 'INT' and p[3]['type'] == 'INT' :
				TAC.emit(newPlace,lhsPlace,p[3]['place'],p[2][0])
				TAC.emit(lhsPlace, newPlace, '', '=')
				p[0] = p[1]
				p[0]['type'] = 'INT'
			elif lhsType == 'FLOAT' and p[3]['type'] == 'FLOAT':
				TAC.emit(newPlace,lhsPlace,p[3]['place'],p[2][0])
				TAC.emit(lhsPlace, newPlace, '', '=')
				p[0] = p[1]
				p[0]['type'] = 'FLOAT'
			else:
				error('Type Error (Expected floats or integers) '+lhsPlace+','+p[3]['place']+'!')

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

        if ST.currentlyInAClass() and p[1]['idenName'][:2] != '@@':
                error('Can\'t assign to non-class variables in a class')
                return
        if not ST.currentlyInAClass() and p[1]['idenName'][:2] == '@@':
                error('Can\'t assign class variables outside a class')
                return
	if p[1]['idenName'][:2] == '@@' and ST.currentlyInAClass():
		p[1]['idenName'] += '#' + ST.getClass()

	if p[1]['idenName'][0] == '@' and p[1]['idenName'][1] != '@':
		if not ST.currentlyInAClassMethod():
			error('Can\'t use instance variables out of class method')
			return
		else:
			if ST.inNew():
				ST.addInstanceVariable(p[1]['idenName'], p[3]['type'])
			#TODO
			#Lookup and substitute
			return

        if not ST.lookupIdentifier(p[1]['idenName']):
                #We need to declare variable. For class variable, we need to check if it isn't instance variable
		if p[1]['idenName'][:2] == '@@' and ST.lookUpInstanceVariable(ST.getClass(),(p[1]['idenName'].split('#'))[0][1:]) != None:
			error('Class variable cannot share name with instance variable (%s)'%p[1]['idenName'])
		myPlace = ST.createTemp()
		ST.addIdentifier(p[1]['idenName'],myPlace,p[3]['type'])
		TAC.emit(myPlace, p[3]['place'], '', '=')
		p[0] = p[3]
		p[0]['place'] = myPlace
        else:
                lhsIdentifier = p[1]['idenName']
                lhsPlace = ST.getAttribute(lhsIdentifier,'place')
		if ST.getAttribute(lhsIdentifier,'type') != p[3]['type']:
			error('Type mismatch in assignment to ' + lhsPlace + ' from ' + p[3]['place'])
		else:
			TAC.emit(lhsPlace, p[3]['place'], '', '=')
			p[0] = p[3]
			p[0]['place'] = lhsPlace


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
	'''l13_expr : l13_expr M_or1 OR l12_expr
	| l12_expr
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	#Boolean OR (Short Circuited)
	newPlace = ST.createTemp()
	p[0] = {
		'place' : newPlace,
		'type' : 'TYPE_ERROR'
	}
	if p[1]['type']=='TYPE_ERROR' or p[4]['type']=='TYPE_ERROR':
		return
	if p[1]['type'] == 'BOOL' and p[4]['type'] == 'BOOL' :
		TAC.emit(newPlace, p[4]['place'], '', '=')
		labelDone = TAC.makeLabel()
		TAC.emit('goto', labelDone, '', '')
		TAC.emit('label', p[2], '', '')
		TAC.emit(newPlace, 'true', '', '=')
		TAC.emit('label', labelDone, '', '')
		p[0]['type'] = 'BOOL'
	else:
		error('Type Error (Expected booleans) '+p[1]['place']+','+p[4]['place']+'!')

def p_makeOrLabels(p):
	''' M_or1 : '''
	labelTrue = TAC.makeLabel()
	p[0] = labelTrue
	TAC.emit('if', p[-1]['place'], 'goto', labelTrue)

def p_l12_expr(p):
	'''l12_expr : l12_expr M_and1 AND l11_expr
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
	if p[1]['type']=='TYPE_ERROR' or p[4]['type']=='TYPE_ERROR':
		return
	if p[1]['type'] == 'BOOL' and p[4]['type'] == 'BOOL' :
		TAC.emit(newPlace, p[4]['place'], '', '=' )
		labelDone = TAC.makeLabel()
		TAC.emit('goto', labelDone, '', '')
		TAC.emit('label', p[2], '', '')
		TAC.emit(newPlace, 'false', '', '=')
		TAC.emit('label', labelDone, '', '')
		p[0]['type'] = 'BOOL'
	else:
		error('Type Error (Expected booleans) '+p[1]['place']+','+p[4]['place']+'!')

def p_makeAndLabels(p):
	''' M_and1 : '''
	labelFalse = TAC.makeLabel()
	p[0] = labelFalse
	TAC.emit('ifnot',p[-1]['place'], 'goto', labelFalse) 

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
	if baseType(p[1]['type']) != baseType(p[3]['type']):
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
		elif baseType(p[1]['type'][0]) == 'STRING' and baseType(p[3]['type'][0]) == 'STRING':
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
        if p[1]['idenName'][:2] == '@@':
		if not ST.currentlyInAClass():
			error('Can\'t use class variables outside a class')
        	        return
		else:
			p[1]['idenName'] += "#" + ST.getClass()
	
	if p[1]['idenName'][0] == '@' and p[1]['idenName'][1] != '@':
		if not ST.currentlyInAClassMethod():
			error('Can\'t use instance variables out of class method')
			return
		else:
			#TODO
			#Need to lookup instance variable and self!
			a = "fp"

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

def p_primary_expr_bracket(p):
	''' primary_expr : '(' expr ')' '''
	p[0] = p[2]

#TODO Arrays, object-var lookup
def p_primary_expr(p):
	''' primary_expr : '[' arg_list ']'
	| primary_expr '[' expr ']'
	| primary_expr '.' LOCALVAR
	'''

def p_primary_expr_method_call(p):
	''' primary_expr : method_call'''
	p[0] = p[1]

###################
#Method Invocation#
###################
def p_method_call(p):
	#Should return type, place
	''' method_call : primary_expr '.'  method '(' arg_list ')'
	| method '(' arg_list ')'
	'''
	p[0] = {
			'place' : 'undefined',
			'type' : 'TYPE_ERROR'
			}
	if len(p) == 5:
		#Direct method call
		label, argList, retType = ST.lookUpMethod(p[1]) 
		if label == None:
			error('Cannot use undefined method in this scope ( %s )'%p[1])
			return
		#Check if function returns incorrectly
		if retType == 'TYPE_ERROR':
			error('Function( %s ) ill-defined. Thus cannot be called'%p[1])
			return
		#Check arguments
		givenArgs = []
		for i in p[3]:
			givenArgs.append(i[0])
		if givenArgs != argList:
			error('Cannot call this function ( %s ). Wrong argument(s)'%p[1])
		#Call function
		newPlace = ST.createTemp()	
		for i in p[3]:
			TAC.emit('param', i[1], '', '')
		TAC.emit(newPlace, label, '', 'call')
		p[0] = {
				'place' : newPlace,
				'type' : retType
				}
	else:
		#Need to do a full Lookup
		#TODO
		newPlace = ST.createTemp()

#TODO - figure out what compstmt should be
#TODO - implement yield
def p_method_callBlock(p):
	''' method_call : primary_expr '.' method_var '{' '|' block_param_list '|' compstmt '}' 
	| method_var '{' '|' block_param_list '|' compstmt '}' 
	'''

#TODO
def p_method_super(p):
	#Should return type, place
	'''method_call : KEYWORD_SUPER
	| KEYWORD_SUPER '(' arg_list ')'
	'''

###################
#lhs of expression#
###################
def p_lhs_var(p):
	'''lhs : user_var
	'''
        p[0]=p[1]

#TODO
def p_lhs_dot(p):
	'''lhs : primary_expr '.' LOCALVAR
	'''

#TODO	
def p_lhs_array(p):
	''' lhs : primary_expr '[' expr ']'
	'''

###########
#Arguments#
###########

def p_arg_list_empty(p):
	'''arg_list : none'''
	p[0] = []

def p_arg_list_non_empty(p):
	'''arg_list : arg_list_tail
	'''
	p[0] = p[1]

def p_arg_list_tail(p):
	'''arg_list_tail : expr ',' arg_list_tail
	| expr
	'''
	p[0] = []
	if len(p) == 2:
		p[0] = [(p[1]['type'], p[1]['place'])]
	else:
		p[0] = [(p[1]['type'], p[1]['place'])] + p[3]

##############
#If statement#
##############

def p_if_block(p):
	'''if_block : KEYWORD_IF expr M_checkBool then_clause M_if1 imp_body_compstmt M_if2 if_tail M_if3 KEYWORD_END
	'''
	p[0] = merge_patches(p[6],p[8])
	r = merge_returns(p[6],p[8])
	p[0].update(r)

def p_checkBool(p):
	''' M_checkBool : '''
	if p[-1]['type'] != 'BOOL' and p[-1]['type'] != 'TYPE_ERROR':
		error('Conditional Expression (%s) should be a Boolean!'%p[-1]['place'])

def p_makeIfLabels(p):
	''' M_if1 : '''
	label1 = TAC.makeLabel()
	label2 = TAC.makeLabel()
	label3 = TAC.makeLabel()
	p[0]=[label1,label2,label3]
	TAC.emit('if', p[-3]['place'], 'goto', label1)
	TAC.emit('goto', label2, '', '')
	TAC.emit('label', label1, '', '')
        ST.addBlock()

def p_startIfTail(p):
	''' M_if2 : '''
	TAC.emit('goto', p[-2][2], '', '')
	TAC.emit('label', p[-2][1], '', '')
        ST.endBlock()

def p_endIf(p):
	''' M_if3 : '''
	TAC.emit('label', p[-4][2], '', '')

def p_then_clause(p):
	'''then_clause : KEYWORD_THEN
	| lin_term 
	| lin_term KEYWORD_THEN
	'''

def p_if_tail(p):
	'''if_tail : opt_else 
	|  KEYWORD_ELSIF expr M_checkBool then_clause M_elsif1 imp_body_compstmt M_elsif2 if_tail M_elsif3
	'''
	if len(p) == 2:
		p[0] = p[1]
		return
	p[0] = merge_patches(p[6],p[8])
	p[0].update(merge_returns(p[6],p[8]))

def p_makeElsifLabels(p):
	''' M_elsif1 : '''
	label1 = TAC.makeLabel()
	label2 = TAC.makeLabel()
	label3 = TAC.makeLabel()
	p[0] = [label1, label2, label3]
	TAC.emit('if', p[-3]['place'], 'goto', label1)
	TAC.emit('goto', label2, '', '')
	TAC.emit('label', label1, '', '')
        ST.addBlock()

def p_startElsifTail(p):
	''' M_elsif2 : '''
	TAC.emit('goto', p[-2][2], '', '')
	TAC.emit('label', p[-2][1], '', '')
        ST.endBlock()

def p_endElsif(p):
	''' M_elsif3 : '''
	TAC.emit('label', p[-4][2], '', '')

def p_opt_else(p):
	'''opt_else : KEYWORD_ELSE M_else1 imp_body_compstmt M_else2
	| none
	'''
	p[0] = {}
	if len(p) > 2:
		p[0] = p[3]

def p_startElse(p):
        ''' M_else1 : '''
        ST.addBlock()

def p_endElse(p):
        ''' M_else2 : '''
        ST.endBlock()

#################
#Until and While#
#################
def p_until_block(p):
	'''until_block : KEYWORD_UNTIL M_until1 expr M_checkBool M_until2 do_clause imp_body_compstmt KEYWORD_END
	'''
        #Ending the scope of the until body
        ST.endBlock()
	TAC.emit('goto', p[2][0], '', '')
	TAC.emit('label', p[2][2], '', '')
	p[0] = {}
	if p[7].get('breakList') != None:
		instr = []
		for i in p[7]['breakList']:
			instr += [i[1]]

		TAC.patch(instr, p[2][2])
	if p[7].get('nextList') != None:
		instr = []
		for i in p[7]['nextList']:
			instr += [i[1]]

		TAC.patch(instr, p[2][0])
	if p[7].get('redoList') != None:
		instr = []
		for i in p[7]['redoList']:
			instr += [i[1]]

		TAC.patch(instr, p[2][1])
	if p[7].get('retType') != None:
		p[0]['retType'] = p[7]['retType']

def p_makeUntilLabels(p):
	''' M_until1 : '''
	startLabel = TAC.makeLabel()
	bodyLabel = TAC.makeLabel()
	doneLabel = TAC.makeLabel()
	p[0] = [startLabel, bodyLabel, doneLabel]
	TAC.emit('label', startLabel, '', '')

def p_outputUntilCondn(p):
	''' M_until2 : '''
	TAC.emit('if', p[-2]['place'], 'goto', p[-3][2])
	TAC.emit('label', p[-3][1],'', '')
        ST.addBlock()

def p_do_clause(p):
	'''do_clause : lin_term
	| lin_term KEYWORD_DO
	| KEYWORD_DO
	'''

def p_while_block(p):
	'''while_block : KEYWORD_WHILE M_while1 expr M_checkBool M_while2 do_clause imp_body_compstmt KEYWORD_END
	'''
        #Ending the block of while body
        ST.endBlock()
	TAC.emit('goto', p[2][0], '', '')
	TAC.emit('label', p[2][2], '', '')
	p[0] = {}
	if p[7].get('breakList') != None:
		instr = []
		for i in p[7]['breakList']:
			instr += [i[1]]

		TAC.patch(instr, p[2][2])
	if p[7].get('nextList') != None:
		instr = []
		for i in p[7]['nextList']:
			instr += [i[1]]

		TAC.patch(instr, p[2][0])
	if p[7].get('redoList') != None:
		instr = []
		for i in p[7]['redoList']:
			instr += [i[1]]

		TAC.patch(instr, p[2][1])
	if p[7].get('retType') != None:
		p[0]['retType'] = p[7]['retType']

def p_makeWhileLabels(p):
	''' M_while1 : '''
	startLabel = TAC.makeLabel()
	bodyLabel = TAC.makeLabel()
	doneLabel = TAC.makeLabel()
	p[0] = [startLabel, bodyLabel, doneLabel]
	TAC.emit('label', startLabel, '', '')

def p_outputWhileCondn(p):
	''' M_while2 : '''
	TAC.emit('ifnot', p[-2]['place'], 'goto', p[-3][2])
	TAC.emit('label', p[-3][1],'', '')
        ST.addBlock()

################
#Case statement#
################
#TODO pass patchlist
#TODO pass return list
def p_case_block(p):
	'''case_block : KEYWORD_CASE expr opt_terms case_body KEYWORD_END
	'''

def p_case_body(p):
	'''case_body : KEYWORD_WHEN arg_list_tail then_clause imp_body_compstmt case_clause   
	'''

def p_case_clause(p):
	'''case_clause : opt_else 
	| case_body
	'''

###########
#For Block#
###########
#TODO pass patchlist
#TODO pass return list
def p_for_block(p):
	'''for_block : KEYWORD_FOR lhs KEYWORD_IN expr do_clause imp_body_compstmt KEYWORD_END
	'''

##################
#Class Definition#
##################
def p_class_defn(p):
	'''class_defn : KEYWORD_CLASS CONST opt_inheritance M_class1 lin_term class_defn_compstmt KEYWORD_END
	'''
        p[0] = {}
	if not ST.classHasNew() :
		error('Class (%s) definition should have a new method (returning an object with instance variables declared)'%p[2])
	ST.endClass(p[2])

def p_startClass(p):
        ''' M_class1 : '''
	if ST.classExists(p[-2]):
		error('Cannot redeclare a class! (' + p[-2] + ')')
		return
        if p[-1]==None:
                ST.addClass(p[-2])
        else:
                if not ST.classExists(p[-1]):
                        error('Class ' + p[-1] + ' does not exist')
                        return
                ST.addClass(p[-2],p[-1])

def p_opt_inheritance(p):
	'''opt_inheritance : none
	| '<' CONST
	'''
        if len(p)>2:
                p[0] = p[2]
        
###################
#Method Definition#
###################
def p_method_defn(p):
	'''method_defn : KEYWORD_DEF type_param method_var method_params M_meth1 lin_term method_defn_compstmt KEYWORD_END
	'''
        p[0]={}
	#Check the return statements in p[7]
	if not ST.inNew():
		#Don't Check return type in new
		if p[7].get('retType') == None:
			if ST.getRetType() != 'VOID':
				ST.setRetType('TYPE_ERROR')
				error('Mismatch in return types in function %s!'%p[3])
		else:
			if ST.getRetType() != p[7]['retType']:
				ST.setRetType('TYPE_ERROR')
				error('Mismatch in return types in function %s!'%p[3])
	#Add a default return statement ( For security ) (next 3 lines)
	newPlace = ST.createTemp()
	TAC.emit(newPlace, 'nil', '', '=')
	TAC.emit('return', newPlace, '', '')
	#End method scope
	ST.endMethod()
	TAC.emit('label', p[5], '', '')

def p_start_method(p):
	''' M_meth1 : none '''
	if ST.methodExists(p[-2]):
		error('Cannot redeclare a method! ( ' + p[-2] + ' )')
		return

	#Currently skip over the method
	endLabel = TAC.makeLabel()
	p[0] = endLabel
	TAC.emit('goto', endLabel, '', '')

	#Check the return value if method name is new
	if ST.currentlyInAClass() and p[-2] == "new" and p[-3] != ST.getClass():
		error('Return type of new should be the same as the class (%s)'%ST.getClass())

	ST.addMethod(p[-2])
	#Emit the label for method
	TAC.emit('label', ST.getCurrLabel(), '', '')
	
	#Set the arg list
	argList = []
	for i in p[-1]:
		argList.append(i[0])
	ST.setArgList(argList)

	#Set the return type
	ST.setRetType(p[-3])

	#Get the arguments from stack and add them to scope
	for i in p[-1]:
		iden = i[1]
		idenType = i[0]
		myPlace = ST.createTemp()
		ST.addIdentifier(iden, myPlace, idenType)
		TAC.emit(myPlace, '', '', 'getarg')

def p_method_params(p):
	'''method_params : none 
        | '(' ')'
	| '(' non_empty_param_list  ')'
	'''
	if len(p) == 4:
		p[0] = p[2]
	else:
		p[0] = []

def p_non_empty_param_list(p):
	'''non_empty_param_list : type_param LOCALVAR
	| type_param LOCALVAR ',' non_empty_param_list
	'''
	#Return the parameter list in an array
	if len(p) == 3:
		p[0] = [(p[1], p[2])]
	else:
		#Merge and check if variable is redeclared
		usedVars = []
		for i in p[4]:
			usedVars += i[1]
		if p[2] in usedVars:
			error('Cannot reuse local variable %s in parameter'%p[2])
			p[0] = p[4]
		else:
			p[0] = [(p[1], p[2])] + p[4]

def p_type_param(p):
        '''type_param : CONST
	| KEYWORD_STRING '(' INT ')'
        | KEYWORD_ARRAY  '(' type_param ',' INT ')'
        | KEYWORD_RANGE '(' INT ',' INT ')'
        '''
	#Return the type (as string)
	if len(p) == 2:
		if p[1] not in ['Int', 'Bool', 'Void', 'Char', 'Float'] + ST.getClasses():
			error(p[1] + ' is not a valid type!')
			p[0] = 'TYPE_ERROR'
			return
		p[0] = p[1].upper()
		if p[1] in ST.getClasses():
			#For classes type is in the same case
			p[0] = p[1]
	elif p[1] == 'Array' :
		p[0] = ('ARRAY', p[3], p[5] )
	elif p[1] == 'String' :
		p[0] = ('STRING', p[3] )
	else:
		p[0] = ('RANGE', p[3], p[5] )

##################
#Block parameters#
##################
def p_block_param_list(p):
	'''block_param_list : none
	| LOCALVAR
	| LOCALVAR ',' block_param_list_tail
	'''

def p_block_param_list_tail(p):
	'''block_param_list_tail : LOCALVAR
	| block_param_list_tail ',' LOCALVAR
	'''

#############
#Blank Lines#
#############
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
	'''method : method_var'''
	p[0] = p[1]

def p_method_var(p):
	'''method_var : LOCALVAR
	| METHOD_ONLY_VAR
	'''
	p[0] = p[1]

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
		'type' : ('STRING', len(p[1])),
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
	'''none : '''
	p[0] = {}

# Error rule for syntax errors
def p_error(p):
	if p == None:
		error("You missed something at the end")
	else:
		error("Syntax error!")

#Error handler
def error(e, lineNo=-1):
	global success
	if lineNo == -1:
		lineNo = currLine

	print colored("ERROR::%d : "%lineNo,'red'),e
	success = 0

def warning(w, lineNo=-1):
	if lineNo == -1:
		lineNo = currLine

	print colored("WARNING::%d : "%lineNo,'blue'),w

#Merge break, next, redo Patchlists
def merge_patches(a,b):
	list1 = a.get('breakList')
	list2 = b.get('breakList')
	p = {}
	if list1 == None and list2 != None:
		p['breakList'] = list2
	elif list1 != None and list2 == None:
		p['breakList'] = list1
	elif list1 != None and list2 != None:
		p['breakList'] = list1 + list2
	
	list1 = a.get('nextList')
	list2 = b.get('nextList')
	if list1 == None and list2 != None:
		p['nextList'] = list2
	elif list1 != None and list2 == None:
		p['nextList'] = list1
	elif list1 != None and list2 != None:
		p['nextList'] = list1 + list2
		
	list1 = a.get('redoList')
	list2 = b.get('redoList')
	if list1 == None and list2 != None:
		p['redoList'] = list2
	elif list1 != None and list2 == None:
		p['redoList'] = list1
	elif list1 != None and list2 != None:
		p['redoList'] = list1 + list2
	
	return p

#Merge returns
def merge_returns(a,b):
	p = {}
	if a.get('retType') == None:
		if b.get('retType') != None :
			p = {'retType' : b.get('retType') }
		else:
			p = {}
		return p
	if b.get('retType') == None:
		if a.get('retType') != None :
			p = {'retType' : a.get('retType') }
		else:
			p = {}
		return p
	if a['retType'] != b['retType']:
		error('Cannot return two different types (' + a['retType'] +  ',' + b['retType'] + ')!')
		p = {'retType' : 'TYPE_ERROR' }
		return p
	p = {'retType' : a['retType'] }
	return p

#Merge Dictionaries
def merge_two_dicts(x, y):
	'''Given two dicts, merge them into a new dict as a shallow copy.'''
	z = x.copy()
	z.update(y)
	return z

#Get The Base type of a typeExpr
def baseType ( typeExpr ):
	if isinstance(typeExpr, tuple):
		return typeExpr[0]
	else :
		return typeExpr

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
outfile = "output.out"
sys.stdout = open(outfile,"w")
TAC.printCode()
