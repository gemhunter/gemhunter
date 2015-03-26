class SymbolTable:

	#Initializing
	def __init__(self):
		self.symbolTable = {
				'main' : {
					'name' : 'main',
					'parent' : None,
					'identifiers' : {}
					}
				}

		self.currentScope = 'main'
		#For temporaries
		self.tempBase = "t"
		self.tempno = -1
		#Sizes
		self.wordSize = 4
		self.addressSize = 4

	#Adds identifier to the current scope symbol table
	def addIdentifier(self, idenName, idenType, idenSize = 0):
		if idenSize == 0:
			if idenType in ['INT','FLOAT','CHAR','BOOL']:
				idenSize = self.wordSize
			elif idenType in ['STRING']:
				idenSize  = self.addressSize

		if idenName not in self.symbolTable[self.currentScope].identifiers:
			self.symbolTable[self.currentScope].identifiers[idenName] = {
					'type' : idenType,
					'size' : idenSize
					}

	#Returns a boolean indicating presence of identifier in current scope 
	def lookupIdentifier(self, idenName):
		return idenName in self.symbolTable[self.currentScope].identifiers
	
	#Returns the attributes of idenName
	def getIdentifier(self, idenName):
		if idenName in self.symbolTable[self.currentScope].identifiers:
			return self.symbolTable[self.currentScope].identifiers[idenName];
		return None;

	#Create a temporary variable
	def createTemp(self):
		self.tempno += 1
		return self.tempBase + str(self.tempno)
