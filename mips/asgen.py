from irgen import parse
import sys
import threeAddressCode
import AssemblyCode


if __name__=='__main__':

        #Parse it!
        #initialize all the helpers
        ST,TAC = parse()
        #TAC.printCode()
        currMeth = 'main'
        AC = AssemblyCode.AssemblyCode(ST,TAC)

        AC.emit('addi','$sp','$sp', (-4)*ST.methodSize[currMeth])

        #iterate over all lines in the TAC to process
        for line in TAC.code:
            #print the TAC line as comment
            AC.comment(line)
            #continue

            #Assignment to temporary variables
            if line[3]=='=':
                #Floating point
                if isinstance(line[1],float):
                    #tempReg = AC.getFloatReg(line[0],line)
                    #AC.emit("li.s",tempReg,line[1])
                    a = 1
                    #TODO

                else:    
                    tempReg = AC.getReg(line[0],line)

                    #assignment from immediate value to a variable
                    if isinstance(line[1],int):
                        AC.emit("li",tempReg,line[1])

                    elif line[1]=='true':
                        AC.emit("li",tempReg,1)

                    elif line[1]=='false':
                        AC.emit("li",tempReg,0)

                    elif line[1]=='nil':
                        AC.emit("li",tempReg,0)

                    #character
                    elif len(line[1])==1:
                        AC.emit("li",tempReg,line[1])

                    #assignment from a variable to another variable
                    elif line[1][0]=='t':
                        AC.emit("move",tempReg,AC.getReg(line[1],line))

            #Bitwise not
            elif line[3]=='~':
                if isinstance(line[1],float):
                    #TODO
                    a = 1
                else:
                    AC.emit("not",AC.getReg(line[0],line),AC.getReg(line[1],line))

            #Boolean complement
            elif line[3]=='!':
                AC.emit("not",AC.getReg(line[0],line),AC.getReg(line[1],line))

            #Unary minus
            elif line[3]=='-' and not line[2]:
                if isinstance(line[1],float):
                    #TODO
                    a = 1
                else:
                    AC.emit("sub",AC.getReg(line[0],line),'$zero',AC.getReg(line[1],line))

            #Multiplication
            elif line[3]=='*':
                if isinstance(line[1],float):
                    #TODO
                    a = 1
                else:
                    AC.emit("mul",AC.getReg(line[0],line),AC.getReg(line[1],line),AC.getReg(line[2],line))

            #Division
            elif line[3]=='/':
                if isinstance(line[1],float):
                    #TODO
                    a = 1
                else:
                    AC.emit("div",AC.getReg(line[0],line),AC.getReg(line[1],line),AC.getReg(line[2],line))

            #Remainder on division
            elif line[3]=='%':
                AC.emit("rem",AC.getReg(line[0],line),AC.getReg(line[1],line),AC.getReg(line[2],line))

        AC.printCode()
