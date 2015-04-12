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

        self.addressDescriptors = {}
        #address descriptor
        #TODO

        self.globalAllocated = 0
        self.localAllocated = 0

    def setReg(self,tempName,reg):
        #flush the old contents back to disk ALWAYS!!
        #Reflect the flush in the address Desciptor dict by changing to None
        #TODO
        self.registerDescriptors[reg]=tempName
        self.addressDescriptors[tempName]['register']=reg
        return

    def getReg(self,tempName):
        #check if the tempName already is present in the memory
        if tempName in addressDescriptors:
            if self.addressDescriptors[tempName]['register'] == None:
                newReg = self.availReg()
                self.setReg(tempName,newReg)
                return newReg
            else:
                return self.addressDescriptors[tempName]['register']
                

        #if not, assign a memory location to it, and a register too
        #TODO
        else:
            if tempName in self.ST.symbolTable['main']['places']:
                #global variable, static allocation
                self.addressDescriptors[tempName]['memory'] = '%d($gp)'%($*self.globalAllocated)
                self.addressDescriptors[tempName]['register'] = None
                self.globalAllocated += 1
            else:
                #local variable, stack allocation
                a = 1
            #assign register and return
            newReg = self.availReg()
            self.setReg(tempName,newReg)
            return newReg
            
    #Internal fn to get the first free register available, if not avaiable, make a register free by flushing
    def availReg(self):
        for reg in self.registerDescriptors:
            if self.registerDescriptors[reg]==None:
                return reg
        return 

    #internal register, to assign temp to a register
    def assignReg(self,regNo,tempName):
        self.registerDescriptors[regNo] = tempName


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
        for line in self.code:
            #print line[0]+' '+line[1]+' '+line[2]+' '+line[3]
            print line[0], 
            print line[1],
            print line[2],
            print line[3]
