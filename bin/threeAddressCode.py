class ThreeAddressCode:

	#Initialize
	def __init__(self):
		self.code = []
		self.quad = -1
		self.nextQuad = 0
		self.labelBase = "l"
		self.labelNo = -1

	#Add instruction to code list
	def emit(self,dest, src1, src2, op):
		self.code.append((dest,src1,src2,op))
		self.quad += 1
		self.nextQuad += 1
	
	#Get current Quad
	def getCurrQuad(self):
		return self.quad

	#Print the code
	def printCode(self):
		for currInstr in self.code:
			print currInstr

	#Patch the goto statements
	def patch(self, instrList, label):
		for i in instrList :
			if i < self.nextQuad  and self.code[i][0] == 'goto':
				self.code[i][1] = label

	#Make a new label
	def makeLabel(self):
		self.labelNo += 1
		return self.labelBase + str(self.labelNo)
