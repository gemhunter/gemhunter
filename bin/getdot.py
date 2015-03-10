import re

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



#used the clean productions to build the dot file
for line in open("treefile.txt"):
    columns = line.split(" ")
    for i in range(1,len(columns)):
        if i != 2:
            print columns[i-1],
    print ""
