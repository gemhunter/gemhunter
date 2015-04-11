class AssemblyCode:
    #Initialize
    def __init__(self,ST,TAC):
        self.code = []
        self.ST = ST
        self.TAC = TAC
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

        #address descriptor
    
    def getReg(self,tempName):
        return self.ST.addressDescriptors[tempName]
        

    def availReg(self):
        for reg in self.registerDescriptors:
            if self.registerDescriptors[reg]==None:
                return reg

    def assignReg(self,regNo,tempName):
        self.registerDescriptors[regNo] = tempName

    def emit(self,instr='',arg1='',arg2='',arg3=''):
        self.code.append([instr,arg1,arg2,arg3])
        return

    def comment(self,com,arg1='',arg2='',arg3=''):
        self.code.append(['#'+com,arg1,arg2,arg3])
        return
    
    def printCode(self):
        for line in self.code:
            #print line[0]+' '+line[1]+' '+line[2]+' '+line[3]
            print line[0], 
            print line[1],
            print line[2],
            print line[3]
