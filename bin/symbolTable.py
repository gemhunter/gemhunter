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
		#self.funcBase = "f"
		#self.funcNo = -1
		#Sizes
		self.wordSize = 4
		self.addressSize = 4

	def addBlock(self):
		bName = self.createBlockName()
		self.symbolTable[bName] = {
				'name' : bName,
				'type' : 'block',
				'parent' : currentScope,
				'identifiers' : {},
				'places' : {}
				}
		currentScope = bName

	def endBlock(self):
		currentScope = self.symbolTable[currentScope]['parent']

	#Adds identifier to the current scope
	def addIdentifier(self, idenName, place, idenType = 'unknown', idenSize = 0):
		#Assign size if not given
		if idenSize == 0:
			idenSize = self.getSize(idenType)

		if idenName[0] == '$':
			#Global Scope. Add in main
			if idenName not in self.symbolTable['main']['identifiers']:
				self.symbolTable['main']['identifiers'][idenName] = {
						'place' : place,
						'type' : idenType,
						'size' : idenSize
						}
				self.symbolTable['main']['places'][place] = idenName
		else :
			#Local Scope! Search till parent is method or main
			exists = False
			scope = self.currentScope
			while self.symbolTable[scope]['type'] not in ['main', 'method']:
				if idenName in self.symbolTable[scope]['identifiers']:
					exists = True

			if idenName in self.symbolTable[scope]['identifiers']:
				exists = True

			if exists == False:
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

	#Get the size of a type
	def getSize(self, typeExpr):
		if typeExpr in ['INT', 'BOOL', 'CHAR', 'VOID' ]:
			return self.wordSize
		elif typeExpr[0] == 'RANGE':
			return 2*self.wordSize
		elif typeExpr[0] == 'STRING':
			return self.addressSize
		elif typeExpr[0] == 'ARRAY':
			return self.addressSize
		else:
			return 0

	#Create a temporary variable
	def createTemp(self):
		self.tempNo += 1
		return self.tempBase + str(self.tempNo)

	#Scope name for new block
	def createBlockName(self):
		self.blockNo += 1
		return self.blockBase + str(self.blockNo)
