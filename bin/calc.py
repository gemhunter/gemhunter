# Yacc example

import yacc as yacc

# Get the token map from the lexer.  This is required.
from calclex import tokens


values = []

print "digraph G {"
#print "a->b;"

def p_expression_plus(p):
    'expression : expression PLUS term'
    #p[0] = p[1] + p[3]
    print "node%d [ label = \"token\\n+\\nPLUS\" ]; " %len(values)
    values.append("PLUS")
    p[0]=len(values)
    temp = values[p[1]]+values[p[3]]
    print "node%d [ label = \"expression\\n%d\" ]; " %(len(values), temp)
    values.append(temp)
    print """node%d -> node%d;
    node%d -> node%d;
    node%d -> node%d;
    """ % (p[0],p[1],p[0],(len(values)-1),p[0],p[3])

def p_expression_minus(p):
    'expression : expression MINUS term'
    #p[0] = p[1] - p[3]
    print "node%d [ label = \"token\\n-\\nMINUS\" ]; " %len(values)
    values.append("MINUS")
    p[0]=len(values)
    temp = values[p[1]]-values[p[3]]
    print "node%d [ label = \"expression\\n%d\" ]; " %(len(values), temp)
    values.append(temp)
    print """node%d -> node%d;
    node%d -> node%d;
    node%d -> node%d;
    """ % (p[0],p[1],p[0],(len(values)-1),p[0],p[3])


def p_expression_term(p):
    'expression : term'
    #p[0] = p[1]
    p[0]=len(values)
    temp = values[p[1]]
    print "node%d [ label = \"expression\\n%d\" ]; " %(len(values), temp)
    values.append(temp)
    print """node%d -> node%d;
    """ % (p[0],p[1])

def p_term_times(p):
    'term : term TIMES factor'
    #p[0] = p[1] * p[3]
    print "node%d [ label = \"token\\n*\\nTIMES\" ]; " %len(values)
    values.append("TIMES")
    p[0]=len(values)
    temp = values[p[1]]*values[p[3]]
    print "node%d [ label = \"expression\\n%d\" ]; " %(len(values), temp)
    values.append(temp)
    print """node%d -> node%d;
    node%d -> node%d;
    node%d -> node%d;
    """ % (p[0],p[1],p[0],(len(values)-1),p[0],p[3])

def p_term_div(p):
    'term : term DIVIDE factor'
    #p[0] = p[1] / p[3]
    print "node%d [ label = \"token\\n/\\nDIVIDE\" ]; " %len(values)
    values.append("DIVIDE")
    p[0]=len(values)
    temp = values[p[1]]/values[p[3]]
    print "node%d [ label = \"expression\\n%d\" ]; " %(len(values), temp)
    values.append(temp)
    print """node%d -> node%d;
    node%d -> node%d;
    node%d -> node%d;
    """ % (p[0],p[1],p[0],(len(values)-1),p[0],p[3])

def p_term_factor(p):
    'term : factor'
    #p[0] = p[1]
    p[0]=len(values)
    temp = values[p[1]]
    print "node%d [ label = \"term\\n%d\" ]; " %(len(values), temp)
    values.append(temp)
    print """node%d -> node%d;
    """ % (p[0],p[1])


def p_factor_num(p):
    'factor : NUMBER'
    #p[0] = p[1]
    print "node%d [ label = \"token\\n%d\\nNUMBER\" ]; " %(len(values),p[1])
    values.append("NUMBER")
    p[0]=len(values)
    temp = p[1]
    print "node%d [ label = \"term\\n%d\" ]; " %(len(values), temp)
    values.append(temp)
    print """node%d -> node%d;
    """ % (p[0],(len(values)-1))

def p_factor_expr(p):
    'factor : LPAREN expression RPAREN'
    #p[0] = p[2]

# Error rule for syntax errors
def p_error(p):
    print "Syntax error in input!"

# Build the parser
parser = yacc.yacc()

while True:
   try:
       s = raw_input()
   except EOFError:
       break
   if not s: continue
   result = parser.parse(s)
   print "}"
   #print result
