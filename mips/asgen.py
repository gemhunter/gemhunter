from irgen import parse
import sys
import threeAddressCode
import AssemblyCode


if __name__=='__main__':

        #Parse it!
        #initialize all the helpers
        ST,TAC = parse()
        #TAC.printCode()
        
        AC = AssemblyCode.AssemblyCode(ST,TAC)
        

        #iterate over all lines in the TAC to process
        for line in TAC.code:
            #print the TAC line as comment
            AC.comment(line)
            
            continue
            #Assignment to temporary variables, consider all cases
            if line[3]=='=':

                #lhs of assignment, get register to assign
                tempReg = AC.getReg(line[0])

                #assignment from immediate value to a variable
                if isinstance(line[1],int):
                        
                        
        AC.printCode()
