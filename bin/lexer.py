#!usr/bin/python

import sys
import re
import os
import lex

def t_MULTICOMMENT(t):
    r'\n+=begin(.*\n)+=end\s'
    t.lexer.lineno += t.value.count('\n')

# List of token names.   This is always required
tokens = (
    "MULTICOMMENT","PLUSEQ","MINUSEQ","STAREQ","DIVEQ","MODEQ","POWEQ","POW","PLUS","MINUS","STAR","DIV","MOD",
    "EQEQUAL","NOTEQ","GTEQUAL","LTEQUAL","NOEQ","CASEEQ","LSHIFT","RSHIFT","AND","OR","GT","LT","STRING",
    "EQUAL","BITAND","VERBAR","BITXOR","BITCOMP","NOT","TER","SEQIN","SEQEX","DOT","SCOPE","COLON","COMMA","LPAREN",
    "RPAREN","LBRACE","RBRACE","LSQB","RSQB","HASH","IDENTIFIER","INT","FLOAT","COMMENT","CONST","DOL0","DOL1","DOL2",
    "DOL3","DOL4","DOL5","DOL6","DOL7","DOL8","DOL9","KEYWORD_FILE","KEYWORD_LINE","KEYWORD_EQUAL","KEYWORD_DEFINED",
    "UNDERSCORE"
)

# tokens for reserved keywords of ruby
reserved = {
    'and' : "KEYWORD_AND",
    'def' : "KEYWORD_DEF",
    'end' : "KEYWORD_end",
    'in' : "KEYWORD_IN",
    'or' : "KEYWORD_OR",
    'self' : "KEYWORD_SELF",
    'unless' : "KEYWORD_UNLESS",
    'begin' : "KEYWORD_begin",
    'ensure' : "KEYWORD_ENSURE",
    'module' : "KEYWORD_MODULE",
    'redo' : "KEYWORD_REDO",
    'super' : "KEYWORD_SUPER",
    'until' : "KEYWORD_UNTIL",
    'BEGIN' : "KEYWORD_BEGIN",
    'break' : "KEYWORD_BREAK",
    'do' : "KEYWORD_DO",
    'false' : "KEYWORD_FALSE",
    'next' : "KEYWORD_NEXT",
    'rescue' : "KEYWORD_RESCUE",
    'then' : "KEYWORD_THEN",
    'when' : "KEYWORD_WHEN",
    'END' : "KEYWORD_END",
    'case' : "KEYWORD_CASE",
    'else' : "KEYWORD_ELSE",
    'for' : "KEYWORD_FOR",
    'nil' : "KEYWORD_NIL",
    'retry' : "KEYWORD_RETRY",
    'true' : "KEYWORD_TRUE",
    'while' : "KEYWORD_WHILE",
    'alias' : "KEYWORD_ALIAS",
    'class' : "KEYWORD_CLASS",
    'elsif' : "KEYWORD_ELSIF",
    'if' : "KEYWORD_IF",
    'not' : "KEYWORD_NOT",
    'return' : "KEYWORD_RETURN",
    'undef' : "KEYWORD_UNDEF",
    'yield' : "KEYWORD_YIELD",
}


tokens = tokens + tuple(reserved.values())


t_PLUS = r'\+'
t_MINUS = r'-'
t_STAR = r'\*'
t_DIV = r'/'
t_MOD = r'%'
t_POW = r'\*\*'
t_EQEQUAL = r'=='
t_NOTEQ = r'!='
t_GT = r'>'
t_LT = r'<'
t_GTEQUAL = r'>='
t_LTEQUAL = r'<='
t_NOEQ = r'<=>'
t_CASEEQ = r'==='
t_EQUAL = r'='
t_PLUSEQ = r'\+='
t_MINUSEQ = r'-='
t_STAREQ = r'\*='
t_DIVEQ = r'/='
t_MODEQ = r'%='
t_POWEQ = r'\*\*='
t_BITAND = r'\&'
t_VERBAR = r'\|'
t_BITXOR = r'\^'
t_BITCOMP = r'\~'
t_LSHIFT = r'<<'
t_RSHIFT = r'>>'
t_AND = r'\&\&'
t_OR = r'\|\|'
t_NOT = r'!'
t_TER = r'\?'
t_SEQIN = r'\.\.'
t_SEQEX = r'\.\.\.'
t_DOT = r'\.'
t_SCOPE = r'::'
t_COLON = r':'
t_COMMA = r','
t_LPAREN = r'\('
t_RPAREN = r'\)'
t_LBRACE = r'\{'
t_RBRACE = r'\}'
t_LSQB = r'\['
t_RSQB = r'\]'
t_HASH = r'\#'
t_DOL0 = r'\$0'
t_DOL1 = r'\$1'
t_DOL2 = r'\$2'
t_DOL3 = r'\$3'
t_DOL4 = r'\$4'
t_DOL5 = r'\$5'
t_DOL6 = r'\$6'
t_DOL7 = r'\$7'
t_DOL8 = r'\$8'
t_DOL9 = r'\$9'
t_KEYWORD_FILE = r'__FILE__'
t_KEYWORD_LINE = r'__LINE__'
t_KEYWORD_EQUAL = r'equal\?'
t_KEYWORD_DEFINED = r'defined\?'

def t_IDENTIFIER(t):
    r'([$@_]?|@@)[a-z]+[a-zA-Z_0-9]*'
    t.type = reserved.get(t.value,'IDENTIFIER')
    return t

def t_INT(t):
    r'([1-9]+\d*)|(0[xX][\da-fA-F]+)|(0[0-7]+)|(0b[01]+)|0'
    t.value = int(t.value)
    return t

def t_FLOAT(t):
    r'((\d+\.\d*)|(\.\d+)|\d+)([eE][\+-]?\d+)?[fF]?'
    return t

def t_COMMENT(t):
    r'\#.*\n'
    t.lexer.lineno += 1

def t_STRING(t):
    r'("(?:\\.|[^"\\])*")|(\'(?:\\.|[^\'\\])*\')'
    t.lexer.lineno += t.value.count('\n')
    return t

def t_CHAR(t):
    r'\'\\?.{1}\''
    t.lexer.lineno += t.value.count("\n")
    return t

def t_CONST(t):
    r'[A-Z][a-zA-Z_0-9]*'
    t.type = reserved.get(t.value,'CONST')
    return t

def t_UNDERSCORE(t):
	'\_'
	return t

t_ignore = ' \t'

# Error handling rule
def t_error(t):
    print "Illegal character '%s'" % t.value[0]
    t.lexer.skip(1)

# Define a rule so we can track line numbers
def t_newline(t):
    r'\n+'
    t.lexer.lineno += len(t.value)


# Build the lexer
lexer = lex.lex()

# Test it out
with open(sys.argv[1], 'r') as my_file:
     data = my_file.read()

# Give the lexer some input
lexer.input(data)

# Tokenize
currLineNo = lexer.lineno
lines = data.split('\n')
buff = []

for tok in lexer:
	#tok = lexer.token()
	#if not tok: break      # No more input
	#print tok
	if tok.lineno > currLineNo:
		print lines[currLineNo-1]+"\t"+"#",
		for item in buff:
			print item,
		print "\n",
		buff = []
		for i in xrange(currLineNo,tok.lineno-1):
			print lines[i],"\n",
		currLineNo = tok.lineno
    	buff.append(tok.type)
    	buffEmpty = 0
	#buff.append(tok.value)

print lines[currLineNo-1]+"\t"+"#",
for item in buff:
	print item,


