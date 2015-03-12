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

delete_list2 = ["rule [","] with"]

fin = open(infile)
fout = open(outfile, "w+")
for line in fin:
   matches = re.findall('rule \[(.*)\] with', line)
   #for word in delete_list2:
   #    matches[0] = matches[0].replace(word, "")
   fout.write(matches[0])
   #line = line[1:len(line)-2]
   #fout.write(line)	
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
    edges = []
    for i in range(1,len(columns)-1):
        i = len(columns)  - i
        columns[i] = columns[i].rstrip()
        edge = ""
        if columns[i] in nodes:
            edge += "node" + str(lhsNum) + " -> node" + str(nodes[columns[i]].pop(len(nodes[columns[i]])-1)) + ";"
            if len(nodes[columns[i]]) == 0:
                   del nodes[columns[i]]
        else:
            print "node%d [ label = \"Token \\n %s\" ]; " % (nodeNum,columns[i])
            edge += "node" + str(lhsNum) + " -> node" + str(nodeNum) + ";"
            #print "node%d -> node%d;" %(lhsNum,nodeNum)
            nodeNum += 1
        edges.append(edge)
    nodes[columns[0]].append(lhsNum)
    while edges:
       print edges.pop(len(edges)-1)

print "}"
