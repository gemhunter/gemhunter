from irgen import parse
import sys
import threeAddressCode
import AssemblyCode


if __name__=='__main__':

        #initialize all the helpers
        ST,TAC = parse()
        AC = AssemblyCode.AssemblyCode(ST,TAC)

        #Variables storing register names
        regt0 = "$t0"
        regt1 = "$t1"
        regt2 = "$t2"
        rega0 = "$a0"
        rega1 = "$a1"
        regv0 = "$v0"

        
        #allocate stack frame for 'main' by decrementing $sp
        AC.emit('addi','$sp','$sp', (-4)*ST.methodSize['main'])
        #Start the localAllocated counter for 'main'
        AC.localAllocated.append(0)


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
                    #assignment from immediate value to a variable
                    if isinstance(line[1],int):
                        AC.emit("li",regt0,line[1])
                        AC.flushFromReg(regt0,line[0])

                    elif line[1]=='true':
                        AC.emit("li",regt0,1)
                        AC.flushFromReg(regt0,line[0])

                    elif line[1]=='false':
                        AC.emit("li",regt0,0)
                        AC.flushFromReg(regt0,line[0])
                        
                    elif line[1]=='nil':
                        AC.emit("li",regt0,0)
                        AC.flushFromReg(regt0,line[0])
                        
                    #character
                    elif line[1][0]=="'" and line[1][-1]=="'":
                        if len(line[1])==4:
                            if line[1][2]=='n':
                                char = ord('\n')
                            elif line[1][2]=="'":
                                char = ord('\'')
                            elif line[1][2]=="t":
                                char = ord('\t')
                            elif line[1][2]=="\\":
                                char = ord('\\')
                        else:
                            char = ord(line[1][1])
                        AC.emit("li",regt0,char)
                        AC.flushFromReg(regt0,line[0])
                        
                    #assignment from a variable to another variable
                    elif line[1][0]=='t':
                        AC.getToReg(line[1],regt0)
                        AC.flushFromReg(regt0,line[0])
                        
            #Bitwise not
            elif line[3]=='~':
                AC.getToReg(line[1],regt1)
                AC.emit("not",regt0,regt1)
                AC.flushFromReg(regt0,line[0])

            #Boolean complement
            elif line[3]=='!':
                label1 = AC.getLabel()
                label2 = AC.getLabel()

                AC.getToReg(line[1],regt0)
                AC.emit("beqz",regt0,label1)
                AC.emit("li",regt1,0)
                AC.emit("b",label2)
                AC.emit(label1+":")
                AC.emit("li",regt1,1)
                AC.emit(label2+":")
                AC.flushFromReg(regt1,line[0])

            #Unary minus
            elif line[3]=='-' and not line[2]:
                AC.getToReg(line[1],regt1)
                AC.emit("sub",regt0,'$zero',regt1)
                AC.flushFromReg(regt0,line[0])

            #Multiplication
            elif line[3]=='*':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("mul",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])

            #Division
            elif line[3]=='/':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("div",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])

            #Remainder on division
            elif line[3]=='%':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("rem",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])

            #Addition
            elif line[3]=='+':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("add",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])

            #Subtraction
            elif line[3]=='-':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("sub",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])
   
            #Left shift
            elif line[3]=='<<':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("sllv",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])

            #Right shift
            elif line[3]=='>>':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("srlv",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])
        
            #Bitwise And
            elif line[3]=='&':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("and",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])

            #Bitwise Or
            elif line[3]=='|':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("or",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])

            #Bitwise Xor
            elif line[3]=='^':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("xor",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])

            #Greater than
            elif line[3]=='>':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("slt",regt0,regt2,regt1)
                AC.flushFromReg(regt0,line[0])

            #Less than
            elif line[3]=='<':
                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("slt",regt0,regt1,regt2)
                AC.flushFromReg(regt0,line[0])

            #Greater than or equal to
            elif line[3]=='>=':
                label1 = AC.getLabel()
                label2 = AC.getLabel()

                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("slt",regt0,regt1,regt2)
                AC.emit("beqz",regt0,label1)
                AC.emit("li",regt0,0)
                AC.emit("b",label2)

                AC.emit(label1+":")
                AC.emit("li",regt0,1)
                AC.emit(label2+":")
                AC.flushFromReg(regt0,line[0])

            #Less than or equal to
            elif line[3]=='<=':
                label1 = AC.getLabel()
                label2 = AC.getLabel()

                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)
                AC.emit("slt",regt0,regt2,regt1)
                AC.emit("beqz",regt0,label1)
                AC.emit("li",regt0,0)
                AC.emit("b",label2)

                AC.emit(label1+":")
                AC.emit("li",regt0,1)
                AC.emit(label2+":")
                AC.flushFromReg(regt0,line[0])

            #Equal to
            elif line[3]=='==':
                label1 = AC.getLabel()
                label2 = AC.getLabel()
                label3 = AC.getLabel()

                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)

                AC.emit("slt",regt0,regt1,regt2)
                AC.emit("beqz",regt0,label1)
                AC.emit("li",regt0,0)
                AC.emit("b",label2)
                
                AC.emit(label1+":")
                AC.emit("slt",regt0,regt2,regt1)
                AC.emit("beqz",regt0,label3)
                AC.emit("li",regt0,0)
                AC.emit("b",label2)

                AC.emit(label3+":")
                AC.emit("li",regt0,1)
                AC.emit(label2+":")
                AC.flushFromReg(regt0,line[0])

            #Not equal to
            elif line[3]=='!=':
                label1 = AC.getLabel()
                label2 = AC.getLabel()
                label3 = AC.getLabel()

                AC.getToReg(line[1],regt1)
                AC.getToReg(line[2],regt2)

                AC.emit("slt",regt0,regt1,regt2)
                AC.emit("beqz",regt0,label1)
                AC.emit("li",regt0,1)
                AC.emit("b",label2)
                
                AC.emit(label1+":")
                AC.emit("slt",regt0,regt2,regt1)
                AC.emit("beqz",regt0,label3)
                AC.emit("li",regt0,1)
                AC.emit("b",label2)

                AC.emit(label3+":")
                AC.emit("li",regt0,0)
                AC.emit(label2+":")
                AC.flushFromReg(regt0,line[0])

            #if
            elif line[0]=='if':
                AC.getToReg(line[1],regt1)
                AC.emit('bnez',regt1,line[3])

            #ifnot
            elif line[0]=='ifnot':
                AC.getToReg(line[1],regt1)
                AC.emit('beqz',regt1,line[3])

            #goto
            elif line[0]=='goto':
                AC.emit('b',line[1])

            #label
            elif line[0]=='label':
                AC.emit(line[1]+":")

            #putint
            elif line[0]=='putint':
                AC.getToReg(line[1],rega0)
                AC.emit('li','$v0',1)
                AC.emit('syscall')

            #putchar
            elif line[0]=='putchar':
                AC.getToReg(line[1],rega0)
                AC.emit('li','$v0',11)
                AC.emit('syscall')

            #putstring
            elif line[0]=='putstring':
                AC.getToReg(line[1],rega0)
                AC.emit('li','$v0',4)
                AC.emit('syscall')

            #readint
            elif line[0]=='readint':
                AC.emit('li','$v0',5)
                AC.emit('syscall')
                AC.flushFromReg(regv0,line[1])

            #readchar
            elif line[0]=='readchar':
                AC.emit('li','$v0',12)
                AC.emit('syscall')
                AC.flushFromReg(regv0,line[1])

            #readintmem
            elif line[0]=='readintmem':
                AC.emit('li','$v0',5)
                AC.emit('syscall')
                AC.getToReg(line[1],regt0)
                AC.emit('sw','$v0','0(%s)'%regt0)

            #readstring
            elif line[0]=='readstring':
                AC.getToReg(line[1],rega0)
                AC.emit('li','$a1',int(line[2]))
                AC.emit('syscall')

            #METHOD MANIPULATORS
            #Start of a method definition- push to the localAllocated stack and reset args counter
            elif line[0]=='methodStarts':
                #Allocate stack frame for callee by incrementing $sp
                AC.emit('addi','$sp','$sp', (-4)*ST.methodSize[line[1]])
                AC.localAllocated.append(0)
                AC.numArgsRead = 0

            #Get the argument, according to the args counter
            elif line[3]=='getarg':
                AC.getToReg('%d($fp)'%4*(2+numArgsRead),regt0)
                AC.flushFromReg(regt0,line[0])
                AC.numArgsRead += 1

            #Returning from function
            elif line[0]=='return':
                #pass return value to $v0
                AC.getToReg(line[1],regv0)
                #Reset the stack frame and jump back to caller
                AC.emit("move","$sp","$fp")
                AC.emit('lw',"$fp","4($fp)")
                AC.emit("jr","$ra")

            #End of method definition, pop from localAllocated stack
            elif line[0]=='methodEnds':
                AC.localAllocated.pop()

            #Pass parameter for a function call
            elif line[0]=='param':
                #Store the parameter on stack after incrementing $sp
                AC.emit('addi','$sp','$sp',-4)
                AC.getToReg(line[1],regt0)
                AC.emit('sw',regt0,'0($sp)')

            #Method call and return from callee
            elif line[3]=='call':
                #Push $fp and $ra to stack
                AC.emit('addi','$sp','$sp',-4)
                AC.emit('sw','$fp','0($sp)')
                AC.emit('addi','$sp','$sp',-4)
                AC.emit('sw','$ra','0($sp)')

                #Set $fp
                AC.emit('move','$fp','$sp')

                #Jump to the function defintion
                AC.emit('jal',line[1])

                #AFTER RETURNING from callee:
                #Reset the old return address for the caller
                AC.emit('lw','$ra','0($sp)')
                #pop 2+numargs (ra,fp, args) (take number from symbol table)
                AC.emit('addi','$sp','$sp', 4*(2+ST.getNumArgs(line[1])))
                #store value from $v0 to line[0]
                AC.flushFromReg(regv0,line[0])

            #Exit
            elif line[0]=='exit':
                AC.emit('b exit')

        AC.printCode()
