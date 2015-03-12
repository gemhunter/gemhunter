#!/usr/bin/python

import sys
import re
import os
import lex

# List of token names.
tokens = (
"LSHIFTEQ",
"RSHIFTEQ",
"ANDEQ",
"OREQ",
"BITANDEQ",
"BITOREQ",
"BITNOTEQ",
"PLUSEQ",
"MINUSEQ",
"STAREQ",
"DIVEQ",
"MODEQ",
"POWEQ",
"POW",
"EQEQUAL",
"NOTEQ",
"GTEQUAL",
"LTEQUAL",
"NOEQ",
"CASEEQ",
"LSHIFT",
"RSHIFT",
"AND",
"OR",
"CHAR",
"STRING",
"SEQIN",
"SEQEX",
"LOCALVAR",
"GLOBALVAR",
"CLASSVAR",
"INSTANCEVAR",
"METHOD_ONLY_VAR",
"INT",
"FLOAT",
"CONST",
"DOL0",
"NEWLINE"
)

#Literals (single character tokens)
literals = "+-*/%><=&|^!~?.:,(){}[];"

# tokens for reserved keywords of ruby
reserved = {
    'def' : "KEYWORD_DEF",
    'end' : "KEYWORD_end",
    'in' : "KEYWORD_IN",
    'self' : "KEYWORD_SELF",
    'unless' : "KEYWORD_UNLESS",
    'redo' : "KEYWORD_REDO",
    'super' : "KEYWORD_SUPER",
    'until' : "KEYWORD_UNTIL",
    'BEGIN' : "KEYWORD_BEGIN",
    'break' : "KEYWORD_BREAK",
    'do' : "KEYWORD_DO",
    'false' : "KEYWORD_FALSE",
    'next' : "KEYWORD_NEXT",
    'then' : "KEYWORD_THEN",
    'when' : "KEYWORD_WHEN",
    'END' : "KEYWORD_END",
    'case' : "KEYWORD_CASE",
    'else' : "KEYWORD_ELSE",
    'for' : "KEYWORD_FOR",
    'nil' : "KEYWORD_NIL",
    'true' : "KEYWORD_TRUE",
    'while' : "KEYWORD_WHILE",
    'class' : "KEYWORD_CLASS",
    'elsif' : "KEYWORD_ELSIF",
    'if' : "KEYWORD_IF",
    'return' : "KEYWORD_RETURN",
    'yield' : "KEYWORD_YIELD",
    '__FILE__' : "KEYWORD_FILE",
    '__LINE__' : "KEYWORD_LINE",
    '__ENCODING__' : "KEYWORD_ENCODING",
}

tokens = tokens + tuple(reserved.values())

t_LSHIFTEQ = r'<<='
t_RSHIFTEQ = r'>>='
t_ANDEQ = r'\&\&='
t_OREQ = r'\|\|=' 
t_BITANDEQ = r'\&='
t_BITOREQ = r'\|='
t_BITNOTEQ = r'\^='
t_POW = r'\*\*'
t_EQEQUAL = r'=='
t_NOTEQ = r'!='
t_GTEQUAL = r'>='
t_LTEQUAL = r'<='
t_NOEQ = r'<=>'
t_CASEEQ = r'==='
t_PLUSEQ = r'\+='
t_MINUSEQ = r'-='
t_STAREQ = r'\*='
t_DIVEQ = r'/='
t_MODEQ = r'%='
t_POWEQ = r'\*\*='
t_LSHIFT = r'<<'
t_RSHIFT = r'>>'
t_AND = r'\&\&'
t_OR = r'\|\|'
t_SEQIN = r'\.\.'
t_SEQEX = r'\.\.\.'
t_DOL0 = r'\$0'

def t_MULTICOMMENT(t):
    r'(?<=\n)=begin(.*\n)+=end(?=\s)'
    t.lexer.lineno += t.value.count('\n')

def t_COMMENT(t):
    r'\#.*(?=\n)'

def t_METHOD_ONLY_VAR(t):
    r'(((_|[a-z])[a-zA-Z_0-9]*)|([A-Z][a-zA-Z_0-9]*))[\?]'
    t.type = reserved.get(t.value,'METHOD_ONLY_VAR')
    return t

def t_LOCALVAR(t):
    r'(_|[a-z])[a-zA-Z_0-9]*'
    t.type = reserved.get(t.value,'LOCALVAR')
    return t

def t_GLOBALVAR(t):
    r'\$([a-zA-Z_])+[a-zA-Z_0-9]*'
    t.type = reserved.get(t.value,'GLOBALVAR')
    return t

def t_CLASSVAR(t):
    r'@@([a-zA-Z_])+[a-zA-Z_0-9]*'
    t.type = reserved.get(t.value,'CLASSVAR')
    return t

def t_CONST(t):
    r'[A-Z][a-zA-Z_0-9]*'
    t.type = reserved.get(t.value,'CONST')
    return t

def t_INSTANCEVAR(t):
    r'@([a-zA-Z_])+[a-zA-Z_0-9]*'
    t.type = reserved.get(t.value,'INSTANCEVAR')
    return t

def t_FLOAT(t):
    r'(((\d+\.\d+)|(\.\d+))([eE][\+-]?\d+)?[fF]?) | (((\d+\.\d+)|(\.\d+)|\d+)([eE][\+-]?\d+)[fF]?) | (((\d+\.\d+)|(\.\d+)|\d+)([eE][\+-]?\d+)?[fF])'
    return t

def t_INT(t):
    r'(((0[dD]\d)|[1-9])[1-9]*\d*)|(0[xX][\da-fA-F]+)|(0[_oO][0-7]+)|(0b[01]+)|0'
    return t

def t_CHAR(t):
    r'\'\\?.{1}\''
    t.lexer.lineno += t.value.count("\n")
    return t

def t_STRING(t):
    r'("(?:\\.|[^"\\])*")|(\'(?:\\.|[^\'\\])*\')'
    t.lexer.lineno += t.value.count('\n')
    return t

def t_NEWLINE(t):
    r'\n+'
    t.lexer.lineno+= len(t.value)
    return t;

t_ignore = ' \t'

# Error handling rule
def t_error(t):
    print "Illegal character '%s'" % t.value[0]
    t.lexer.skip(1)

# Build the lexer
lexer = lex.lex()
