class SymbolTable:

	#Initializing
	def __init__(self):
		self.symbolTable = {
			'main' : {
				'name' : 'main',
				'type' : 'main',
				'parent' : None,
				'identifiers' : {},
				'places' : {}
			}
		}
		self.currentScope = 'main'
		#For temporaries
		self.tempBase = "t"
		self.tempNo = -1
		self.blockBase = "b"
		self.blockNo = -1
		self.funcBase = "f"
		self.funcNo = -1
		#Sizes
		self.wordSize = 4
		self.addressSize = 4

	#Adds identifier to the current scope symbol table
	def addIdentifier(self, idenName, place, idenType = 'unknown', idenSize = 0):
		if idenSize == 0:
			if idenType in ['INT','FLOAT','CHAR','BOOL']:
				idenSize = self.wordSize
			elif idenType in ['STRING']:
				idenSize  = self.addressSize
			elif idenType in ['unknown']:
				idenSize = 0 

		if idenName not in self.symbolTable[self.currentScope]['identifiers']:
			self.symbolTable[self.currentScope]['identifiers'][idenName] = {
				'place' : place,
				'type' : idenType,
				'size' : idenSize
			}
			self.symbolTable[self.currentScope]['places'][place] = idenName
	
	#Return the identifier corresponding to place (None if it doesn't exist)
	def getIdentifier(self, place):
		return self.symbolTable[self.currentScope]['places'].get(place)

	#Returns a boolean indicating presence of identifier in current scope 
	def lookupIdentifier(self, idenName):
		return idenName in self.symbolTable[self.currentScope]['identifiers']

	#Returns all the attributes of idenName ( None if they don't exist)
	def getIdentifierAttributes(self, idenName):
		return self.symbolTable[self.currentScope]['identifiers'].get(idenName)

	#Returns the asked attribute of idenName (None if idenName doesn't exist or attr doesn't exist)
	def getAttribute(self, idenName, attrName):
		if idenName in self.symbolTable[self.currentScope]['identifiers']:
			return  self.symbolTable[self.currentScope]['identifiers'][idenName].get(attrName)
		else:
			return None

	#Adds attribute to idenName in currentScope
	def addAttribute(self, idenName, attrName, attrVal):
		if idenName in self.symbolTable[self.currentScope]['identifiers']:
			self.symbolTable[self.currentScope]['identifiers'][idenName][attrName] = attrVal
			return 1
		else:
			return 0

	#Create a temporary variable
	def createTemp(self):
		self.tempNo += 1
		return self.tempBase + str(self.tempNo)
