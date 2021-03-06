import random
import sys

class AssemblyCode:
    #Initialize
    def __init__(self,ST,TAC):
        self.code = []
        self.ST = ST
        self.TAC = TAC

        #stores the location of each tempName in memory, if allocated
        self.addressDescriptors = {}

        #reflects the number of variables (each of size one word), which have been allocated currently, for global and local scopes
        self.globalAllocated = 0
        self.localAllocated = []
        
        #Variables to implement function stacks and parameters
        self.numArgsRead = 0
        self.numArgsGiven = 0

        #MIPS label count
        self.labelBase = 'mipsLabel'
        self.labelCount = 0

    #Get the contents from address location of tempName to register reg
    def getToReg(self,tempName,reg):
        #check if the tempName already is present in the memory
        if tempName not in self.addressDescriptors:
            if tempName in self.ST.symbolTable['main']['places']:
                #global variable, static allocation
                self.addressDescriptors[tempName] = '%d($gp)'%(4*self.globalAllocated)
                self.globalAllocated += 1

            else:
                #local variable, stack allocation
                self.addressDescriptors[tempName] = '%d($sp)'%(4*self.localAllocated[-1])
                self.localAllocated[-1] += 1

        #assign register and return
        self.emit('lw',reg,self.addressDescriptors[tempName])
        return

    def flushFromReg(self,reg,tempName):
        #check if the tempName already is present in the memory
        if tempName not in self.addressDescriptors:
            if tempName in self.ST.symbolTable['main']['places']:
                #global variable, static allocation
                self.addressDescriptors[tempName] = '%d($gp)'%(4*self.globalAllocated)
                self.globalAllocated += 1

            else:
                #local variable, stack allocation
                self.addressDescriptors[tempName] = '%d($sp)'%(4*self.localAllocated[-1])
                self.localAllocated[-1] += 1

        self.emit('sw',reg,self.addressDescriptors[tempName])
        return

    #Get the next label
    def getLabel(self):
        label = self.labelBase + str(self.labelCount)
        self.labelCount += 1
        return label

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
            footer = 'exit:\nli $v0, 10 \nsyscall'

            print(header)

            for line in self.code:
                if line[0][0]=='#':
                    print line[0]+', '+line[1]+', '+line[2]+', '+line[3]
                    continue
        
                print str(line[0])+" ",
                if str(line[1]):
                    print " "+str(line[1]),
                if str(line[2]):
                    print ", "+str(line[2]),
                if str(line[3]): 
                    print ", "+str(line[3]),   

                print "\n"             
            print(footer)
