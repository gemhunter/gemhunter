#!/usr/bin/python

import sys
import re
import os
import lex
from termcolor import colored

# List of token names.
tokens = (
"PLUSEQ",
"MINUSEQ",
"STAREQ",
"DIVEQ",
"POW",
"EQEQUAL",
"NOTEQ",
"GTEQUAL",
"LTEQUAL",
"LSHIFT",
"RSHIFT",
"AND",
"OR",
"CHAR",
"STRING",
"SEQIN",
"LOCALVAR",
"GLOBALVAR",
"CLASSVAR",
"INSTANCEVAR",
"METHOD_ONLY_VAR",
"INT",
"FLOAT",
"CONST",
"NEWLINE"
)

#Literals (single character tokens)
literals = "+-*/%><=&|^!~?.:,(){}[];"

# tokens for reserved keywords of ruby
reserved = {
    'Array' : "KEYWORD_ARRAY", 
    'Range' : "KEYWORD_RANGE",
    'String' : "KEYWORD_STRING",
    'def' : "KEYWORD_DEF",
    'end' : "KEYWORD_END",
    'in' : "KEYWORD_IN",
    'redo' : "KEYWORD_REDO",
    'super' : "KEYWORD_SUPER",
    'until' : "KEYWORD_UNTIL",
    'break' : "KEYWORD_BREAK",
    'do' : "KEYWORD_DO",
    'false' : "KEYWORD_FALSE",
    'next' : "KEYWORD_NEXT",
    'then' : "KEYWORD_THEN",
    'when' : "KEYWORD_WHEN",
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
    'guys' : "KEYWORD_GUYS",
}

tokens = tokens + tuple(reserved.values())

t_POW = r'\*\*'
t_EQEQUAL = r'=='
t_NOTEQ = r'!='
t_GTEQUAL = r'>='
t_LTEQUAL = r'<='
t_PLUSEQ = r'\+='
t_MINUSEQ = r'-='
t_STAREQ = r'\*='
t_DIVEQ = r'/='
t_LSHIFT = r'<<'
t_RSHIFT = r'>>'
t_AND = r'\&\&'
t_OR = r'\|\|'
t_SEQIN = r'\.\.'

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
    t.value = float(t.value)
    return t

def t_INT(t):
    r'([1-9]\d*)|(0[xX][\da-fA-F]+)|(0[_oO][0-7]+)|(0b[01]+)|0'
    t.value = int(t.value,0)
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
    r'\n'
    t.lexer.lineno+= len(t.value)
    return t;

t_ignore = ' \t'

# Error handling rule
def t_error(t):
    print colored("Illegal character '%s'" % t.value[0],'yellow'), colored("Skipping it!",'yellow')
    t.lexer.skip(1)

# Build the lexer
lexer = lex.lex()
