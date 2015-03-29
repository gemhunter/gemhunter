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
			scope = self.lookUpScope(idenName)
			if scope == None:
				self.symbolTable['main']['identifiers'][idenName] = {
						'place' : place,
						'type' : idenType,
						'size' : idenSize
						}
				self.symbolTable['main']['places'][place] = idenName
		else : #DS - update else condition to match that of lookUpScope
			#Local Scope! Add in current scope
			scope = self.lookUpScope(idenName)
			if scope == None:
				self.symbolTable[self.currentScope]['identifiers'][idenName] = {
						'place' : place,
						'type' : idenType,
						'size' : idenSize
						}
				self.symbolTable[self.currentScope]['places'][place] = idenName

	#Returns a boolean indicating presence of identifier 
	def lookupIdentifier(self, idenName):
                return self.lookUpScope(idenName) != None

	#Returns all the attributes of idenName ( None if they don't exist)
	def getIdentifierAttributes(self, idenName):
		return self.symbolTable[self.lookUpScope(idenName)]['identifiers'].get(idenName)

	#Returns the asked attribute of idenName (None if idenName doesn't exist or attr doesn't exist)
	def getAttribute(self, idenName, attrName):
		if idenName in self.symbolTable[self.lookUpScope(idenName)]['identifiers']:
			return  self.symbolTable[self.lookUpScope(idenName)]['identifiers'][idenName].get(attrName)
		else:
			return None

	#Adds attribute to the identifier idenName in the symbol table
	def addAttribute(self, idenName, attrName, attrVal):
		if idenName in self.symbolTable[self.lookUpScope(idenName)]['identifiers']:
			self.symbolTable[self.lookUpScope(idenName)]['identifiers'][idenName][attrName] = attrVal
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

	#Tells the scope according to variable type
	#If it doesn't exist, returns None
	def lookUpScope(self, idenName):
		if idenName[0] == '$' :
			#Search for global variable in main
			if idenName in self.symbolTable['main']['identifiers'] :
				return 'main'
			else:
				return None
		
		elif idenName[0] != '@' and not idenName[0].isupper():
			#Local variable
			#Search till you find method/main
			scope = self.currentScope
			while self.symbolTable[scope]['type'] not in ['main', 'method']:
				if idenName in self.symbolTable[scope]['identifiers']:
					return scope
				scope = self.symbolTable[scope]['parent']

			if idenName in self.symbolTable[scope]['identifiers']:
				return scope

			return None
