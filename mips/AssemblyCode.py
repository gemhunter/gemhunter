import random

class AssemblyCode:
    #Initialize
    def __init__(self,ST,TAC):
        self.code = []
        self.ST = ST
        self.TAC = TAC
        #Describes the contents of all the registers
        self.registerDescriptors = {
            '$t0' : None,
            '$t1' : None,
            '$t2' : None,
            '$t3' : None,
            '$t4' : None,
            '$t5' : None,
            '$t6' : None,
            '$t7' : None,
            '$t8' : None,
            '$t9' : None,
            '$s0' : None,
            '$s1' : None,
            '$s2' : None,
            '$s3' : None,
            '$s4' : None,
            '$s5' : None,
            '$s6' : None,
            '$s7' : None
        }

        #stores the location of each tempName in memory and registers, if any
        self.addressDescriptors = {}

        #reflects the number of variables (each of size one word), which have been allocated currently, for global and local scopes
        self.globalAllocated = 0
        self.localAllocated = 0

    def setReg(self,tempName,reg):
        #Update the new contents of register reg and emit code for the same
        self.emit('ld',reg,self.addressDescriptors[tempName]['memory'])
        self.registerDescriptors[reg]=tempName
        self.addressDescriptors[tempName]['register']=reg
        return

    #get the register for tempName
    def getReg(self,tempName,TACline):
        #check if the tempName already is present in the memory
        if tempName in self.addressDescriptors:
            if self.addressDescriptors[tempName]['register'] == None:
                newReg = self.availReg(TACline)   #returns the appropriate register for this tempName
                self.setReg(tempName,newReg)
                return newReg
            else:
                return self.addressDescriptors[tempName]['register']
                

        #if not, assign a memory location to it, and a register too
        else:
            if tempName in self.ST.symbolTable['main']['places']:
                #global variable, static allocation
                self.addressDescriptors[tempName] = {}
                self.addressDescriptors[tempName]['memory'] = '%d($gp)'%(4*self.globalAllocated)
                self.addressDescriptors[tempName]['register'] = None
                self.globalAllocated += 1

            else:
                #Do something for functions, via stack or sth else, process localAllocated
                #TODO ^
                #local variable, stack allocation
                self.addressDescriptors[tempName] = {}
                self.addressDescriptors[tempName]['memory'] = '%d($fp)'%(4*self.localAllocated)
                self.addressDescriptors[tempName]['register'] = None
                self.localAllocated += 1

            #no need to emit code to assign the tempName to this memory location, taken care at flush
            #assign register and return
            newReg = self.availReg(TACline)
            self.registerDescriptors[newReg]=tempName
            self.addressDescriptors[tempName]['register']=newReg
            return newReg
            
    #Internal fn to get a register such that no tempName from the current instruction is replaced
    def availReg(self,TACline):
        #check if some register is empty or not
        for reg in self.registerDescriptors:
            if self.registerDescriptors[reg]==None:
                return reg

        #get a filled regsiter, and flush it's contents out
        while True:            
            rnd = random.randint(0, 17)
            if rnd<10:
                reg = '$t'+str(rnd%10)
            else:
                reg = '$s'+str(rnd%10)
            
            if self.registerDescriptors[reg] not in TACline:
                break

        #flush the old contents back to disk
        self.emit('sw',reg,self.addressDescriptors[self.registerDescriptors[reg]]['memory'])
        self.addressDescriptors[self.registerDescriptors[reg]]['register'] = None

        return reg #Should never come to this line


    #Emit the code, by appending to the list
    def emit(self,instr='',arg1='',arg2='',arg3=''):
        self.code.append([instr,arg1,arg2,arg3])
        return

    #Add a comment to the output code
    def comment(self,TACline):
        self.code.append(['#'+str(TACline[0])+' ',str(TACline[1])+' ',str(TACline[2])+' ',str(TACline[3])])
        return
    
    #print the whole assembly code
    def printCode(self):
        header = '.text \nmain:'
        footer = 'li $v0, 10 \nsyscall'

        print header

        for line in self.code:
            if line[0][0]=='#':
                print line[0]+', '+line[1]+', '+line[2]+', '+line[3]
                continue
    
            print line[0],
            print " ",
            print line[1],
            if line[2]: print ', ',
            print line[2],
            if line[3]: print ', ',
            print line[3]

        print footer
