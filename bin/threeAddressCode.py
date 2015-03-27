class ThreeAddressCode:

	#Initialize
	def __init__(self):
		self.code = []
		self.quad = -1
		self.nextQuad = 0
	
	#Add instruction to code list
	def emit(self,dest, src1, src2, op):
		self.code.append((dest,src1,src2,op))
		self.quad += 1
		self.nextQuad += 1

	#Print the code
	def printCode(self):
		for currInstr in self.code:
			print currInstr
