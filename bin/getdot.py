import re
from collections import defaultdict

#obtain the lines with the productions used
outfile = open("actions.txt",'w')
with open("parselog.txt") as f:
    for line in f:
        if re.match("INFO:root:Action(.*)", line):
            outfile.write(line)


#clean the productions to give the required information
infile = "actions.txt"
outfile = "treefile.txt"

delete_list = ["INFO:root:Action : Reduce rule", "with","and goto state "]
delete_list2 = ["[","]"]

fin = open(infile)
fout = open(outfile, "w+")
for line in fin:
   for word in delete_list:
       line = line.replace(word, "")
   matches = re.findall('\[.*->[^\[]*\] ', line, flags=0)
   for word in delete_list2:
       matches[0] = matches[0].replace(word, "")
   fout.write(matches[0])
   fout.write("\n")
fin.close()
fout.close()



#use the clean productions and build the dot file
nodes = defaultdict(list)
#nodes = dict()
nodeNum = 1

print """digraph G {
graph [ordering="out"];
"""

for line in open("treefile.txt"):
    columns = line.split(" ")
    print "node%d [ label = \"%s\" ]; " % (nodeNum,columns[0])
    lhsNum = nodeNum
    nodeNum += 1
    for i in range(2,len(columns)-1):
        #i = len(columns) - i
        if columns[i] in nodes:
            print "node%d -> node%d;" %(lhsNum,nodes[columns[i]].pop(len(nodes[columns[i]])-1))
            if len(nodes[columns[i]]) == 0:
                   del nodes[columns[i]]
        else:
            print "node%d [ label = \"Token \\n %s\" ]; " % (nodeNum,columns[i])
            print "node%d -> node%d;" %(lhsNum,nodeNum)
            nodeNum += 1
    
    nodes[columns[0]].append(lhsNum)
    print ""

print "}"
