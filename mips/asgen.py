from irgen import parse
import sys
import threeAddressCode
import AssemblyCode


if __name__=='__main__':

        #Parse it!
        ST,TAC = parse()
        #TAC.printCode()
        
        AC = AssemblyCode.AssemblyCode(ST,TAC)
        
        for line in TAC.code:
            AC.comment(str(line))
            #print line,
            continue
            if line[3]=='=':
                tempReg = AC.availReg()
                if not isinstance(line[1],int):
                    AC.emit('la',tempReg,AC.getReg(line[1]))
                else:
                    AC.emit('la',tempReg,[1])
                    AC.assignReg(tempReg,line[1])
                AC.emit('sw',tempReg,AC.getReg(line[0]))
                #freeReg(tempReg)
                #print AC.getReg(line[1])
                        
        AC.printCode()
