class SymbolTable:

	#Initializing
	def __init__(self):
		self.symbolTable = {
				'main' : {
					'name' : 'main',
					'type' : 'main',
					'parent' : None,
					'identifiers' : {},
					'methods' : {},
					'places' : {}
					}
				}
		self.currentScope = 'main'
		#For temporaries
		self.tempBase = "t"
		self.tempNo = -1
		self.blockBase = "b"
		self.blockNo = -1
		self.methBase = "m"
		self.methNo = -1
		#Sizes
		self.wordSize = 4
		self.addressSize = 4
		self.classes = []

        #Methods to manipulate (add/end) scope blocks
	def addBlock(self):
		bName = self.createBlockName()
		self.symbolTable[bName] = {
				'name' : bName,
				'type' : 'block',
				'parent' : self.currentScope,
				'identifiers' : {},
				'methods' : {},
				'places' : {}
				}
		self.currentScope = bName

	def endBlock(self):
		self.currentScope = self.symbolTable[self.currentScope]['parent']

        #Methods to work with classes
        def addClass(self,className,parent = 'main'):
		self.symbolTable[className] = {
				'name' : className,
				'type' : 'class',
				'parent' : parent,
				'identifiers' : {},
				'methods' : {},
				'places' : {},
				'instanceVars' : {},
				'instanceNum' : 0,
				'hasNew' : False,
				'inNew' : False
				}
		if parent != 'main' :
			#Inheritance Baby!
			self.symbolTable[className]['instanceVars'] = self.symbolTable[parent]['instanceVars']
			self.symbolTable[className]['instanceNum'] = self.symbolTable[parent]['instanceNum']
		self.currentScope = className
		self.classes.append(className)

        def endClass(self,className):
                self.currentScope = 'main'

        def currentlyInAClass(self):
                return self.symbolTable[self.currentScope]['type']=='class'

	def getClass(self):
		assert(self.currentlyInAClass())
		return self.currentScope
	
	def getParClass(self):
		parentScope = self.symbolTable[self.currentScope]['parent']
		assert(self.symbolTable[parentScope]['type'] == 'class')
		return parentScope

        def classExists(self,className):
		if self.symbolTable.get(className) == None:
			return False
		else:
			return self.symbolTable[className]['type'] == 'class'

	def addInstanceVariable(self, idenName, typeVar):
		#Adds instance variable in class (if it doesn't exist) (also it shouldn't be a class variable)
		assert(idenName[0] == '@')
		assert(self.currentlyInAClassMethod())
		assert(self.inNew())
		parentScope = self.symbolTable[self.currentScope]['parent']
		if self.symbolTable[parentScope]['instanceVars'].get(idenName) == None and self.lookUpScope("@" + idenName + "#" + parentScope) == None:
			self.symbolTable[parentScope]['instanceVars'][idenName] = {
					'type' : typeVar,
					'size' : self.getSize(typeVar),
					'place' : self.symbolTable[parentScope]['instanceNum']
					}
			self.symbolTable[parentScope]['instanceNum'] += 1

	def lookUpInstanceVariable(self, className, idenName):
		return self.symbolTable[className]['instanceVars'].get(idenName)

	def classHasNew(self):
		assert(self.currentlyInAClass())
		return self.symbolTable[self.currentScope]['hasNew']
	
	def inNew(self):
		parentScope = self.symbolTable[self.currentScope]['parent']
		return parentScope != None and self.symbolTable[parentScope]['type'] == 'class' and self.symbolTable[parentScope]['inNew']

	def getClasses(self):
		return self.classes

	def currentlyInAClassMethod(self):
		parentScope = self.symbolTable[self.currentScope]['parent']
		return self.symbolTable[self.currentScope]['type'] == 'method' and parentScope != None and self.symbolTable[parentScope]['type'] == 'class'

	#Methods to work with methods
	def addMethod(self, mtName):
		#Current scope can be class/main
		if self.currentlyInAClass() and mtName == 'new':
			assert(not self.symbolTable[self.currentScope]['hasNew'])
			self.symbolTable[self.currentScope]['hasNew'] = True
			self.symbolTable[self.currentScope]['inNew'] = True
		extendedName = self.currentScope + '#' + mtName
		self.symbolTable[extendedName] = {
				'name' : mtName,
				'type' : 'method',
				'parent' : self.currentScope,
				'identifiers' : {},
				'methods' : {},
				'places' : {},
				'label' : self.createMethodName(),
				'retType' : 'TYPE_ERROR',
				'argList' : []
				}
		self.symbolTable[self.currentScope]['methods'][mtName] = {
				'extendedName' : extendedName
				}
		self.currentScope = extendedName
	
	def endMethod(self):
		self.currentScope = self.symbolTable[self.currentScope]['parent']
		if self.currentlyInAClass():
			self.symbolTable[self.currentScope]['inNew'] = False

	def methodExists(self, mtName):
		#Before calling addMethod
		return self.symbolTable.get(self.currentScope + '#' + mtName) != None

	#Assumes that we are in a method
	def getCurrLabel(self):
		#return the method label if currentScope is a method
		if self.symbolTable[self.currentScope]['type'] == 'method':
			return self.symbolTable[self.currentScope]['label']
		else:
			return None
	
	def setRetType(self, typeExpr):
		#Set the return type of the current method as typeExpr
		assert(self.symbolTable[self.currentScope]['type'] == 'method')
		self.symbolTable[self.currentScope]['retType'] = typeExpr

	def getRetType(self):
		#Get the return type of the current method
		assert(self.symbolTable[self.currentScope]['type'] == 'method')
		return self.symbolTable[self.currentScope]['retType']

	def setArgList(self, typeExprs):
		#Sets the argument list of the current method as typeExprs (list)
		assert(self.symbolTable[self.currentScope]['type'] == 'method')
		self.symbolTable[self.currentScope]['argList'] = typeExprs

	def lookUpMethod(self, mtName):
		#Search for a method in all ancestor scopes (till main)
		#During a method call (non-class method)
		#Returns label,argList,retType
		#Returns whether this is a class method
		scope = self.currentScope
		while self.symbolTable[scope]['type'] not in ['main']:
			if mtName in self.symbolTable[scope]['methods']:
				eName = self.symbolTable[scope]['methods'][mtName]['extendedName']
				return self.symbolTable[eName]['label'], self.symbolTable[eName]['argList'], self.symbolTable[eName]['retType'], self.symbolTable[scope]['type'] == 'class'
			scope = self.symbolTable[scope]['parent']
		if mtName in self.symbolTable[scope]['methods']:
			eName = self.symbolTable[scope]['methods'][mtName]['extendedName']
			return self.symbolTable[eName]['label'], self.symbolTable[eName]['argList'], self.symbolTable[eName]['retType'],None
		return None,None,None,None

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
		elif idenName[:2] == '@@':
			#Class Variable
			assert(self.symbolTable[self.currentScope]['type'] == 'class')
			scope = self.lookUpScope(idenName)
			if scope == None:
				self.symbolTable['main']['identifiers'][idenName] = {
						'place' : place,
						'type' : idenType,
						'size' : idenSize
						}
				self.symbolTable['main']['places'][place] = idenName
		else: 
                        #idenName[0] != '@' and not idenName[0].isupper()  -> Local Scope! Add in current scope
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

	#Returns all the attributes of idenName ( None if they don't exist )
	def getIdentifierAttributes(self, idenName):
                idenScope = self.lookUpScope(idenName)
		if idenScope == None:
                        return None
                else:
                        return self.symbolTable[idenScope]['identifiers'].get(idenName)

	#Returns the asked attribute of idenName (None if idenName doesn't exist or attr doesn't exist)
	def getAttribute(self, idenName, attrName):
                idenScope = self.lookUpScope(idenName)
                if idenScope != None:
			return  self.symbolTable[idenScope]['identifiers'][idenName].get(attrName)
		else:
			return None

	#Adds attribute to the identifier idenName in the symbol table
	def addAttribute(self, idenName, attrName, attrVal):
                idenScope = self.lookUpScope(idenName)
		if idenScope != None:
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

	#Scope name for new method
	def createMethodName(self):
		self.methNo += 1
		return self.methBase + str(self.methNo)

	#Tells the scope according to variable type
	#If it doesn't exist, returns None
	def lookUpScope(self, idenName):
		#Only called from within the class
		if idenName[0] == '$' :
			#Search for global variable in main
			if idenName in self.symbolTable['main']['identifiers'] :
				return 'main'
			else:
				return None
		
		elif idenName[0] != '@' and not idenName[0].isupper():
			#Local variable
			#Called only for a local variable not a method
			#Search till you find method/main/class
			scope = self.currentScope
			while self.symbolTable[scope]['type'] not in ['main', 'method', 'class']:
				if idenName in self.symbolTable[scope]['identifiers']:
					return scope
				scope = self.symbolTable[scope]['parent']

			if idenName in self.symbolTable[scope]['identifiers']:
				return scope

			return None
                elif idenName[:2] == '@@':
			#Search for class variable in main
		       	if idenName in self.symbolTable['main']['identifiers']:
                                return 'main'
                        else:
                                return None

