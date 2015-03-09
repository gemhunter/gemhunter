# Yacc example

import yacc as yacc
import logging
import re

# Get the token map from the lexer.  This is required.
from calclex import tokens

def p_expression_plus(p):
    'expression : expression PLUS term'
    p[0] = p[1] + p[3]

def p_expression_minus(p):
    'expression : expression MINUS term'
    p[0] = p[1] - p[3]

def p_expression_term(p):
    'expression : term'
    p[0] = p[1]

def p_term_times(p):
    'term : term TIMES factor'
    p[0] = p[1] * p[3]

def p_term_div(p):
    'term : term DIVIDE factor'
    p[0] = p[1] / p[3]

def p_term_factor(p):
    'term : factor'
    p[0] = p[1]

def p_factor_num(p):
    'factor : NUMBER'
    p[0] = p[1]

def p_factor_expr(p):
    'factor : LPAREN expression RPAREN'
    p[0] = p[2]

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



   #obtain the file of rules used
   outfile = open("actions",'w')
   with open("parselog.txt") as f:
       for line in f:
           if re.match("INFO:root:Action(.*)", line):
               outfile.write(line)



   infile = "actions"
   outfile = "treefile"

   delete_list = ["INFO:root:Action : Reduce rule", "with","and goto state "]
   fin = open(infile)
   fout = open(outfile, "w+")
   for line in fin:
       for word in delete_list:
           line = line.replace(word, "")
       matches = re.findall('\[.*->[^\[]*\] ', line, flags=0)
       fout.write(matches[0])
       fout.write("\n")
   fin.close()
   fout.close()
