gemhunter - A customized Ruby compiler
===================================

Ruby is a powerful language with support for various programming paradigms and a lot of syntactic sugar. In *gemhunter*, we have eliminated a lot of extra features of Ruby to give a clean implementation, supporting our own brand of Ruby, with minor tweaks from the original.

*gemhunter* is written completely in Python, making use of the PLY (Python Lex-Yacc) package.

##Language Features:
-	Imperative and object-oriented paradigm

-	Inheritance of instance variables and methods, with method dispatch over the whole inheritance hierarchy

-	Dynamic memory allocation to arrays, strings and objects

-	Implicit static typing and type checking, no dynamic typing

-	Non duck-typed language

-	Follows lexical scoping, no support for dynamic scoping

-	Static dispatching of functions, as upcasting is not allowed


##Language specifications:

*	**Basic data types**

	-	Int (signed integers)

	-	Char (ASCII characters, uses single quotes e.g. 'a', and supports `\n,\t,\',\\,\0` escape sequences)

	-	Bool (boolean `true` and `false`)

	-	Void (can assign value `nil`)

	-	String(#x) (fixed-size of length #x (incl. \0 terminator), *not* supporting escape sequences, indexed from 0)

*	**Variable declaration and assignment**

	-	There are no explicit declarations. A variable is declared the first time something is assigned to it, using the `=` operator.

		e.g.

			x = 1
			y = x

		This program declares x on line 1 and assigns a value of 1 to x.
		It then declares y and assigns the value of x to y.

			x  = "Hallo World"
			x[1] = e

		This program declares x as a string of size 12 (including \0), and changes the second character from 'a' to 'e'.

	-	We **do not** support dynamic typing. Once a variable has been assigned a type, it can't be assigned values of other types.  

		e.g.

			x = 1
			x = true

		This is a *wrong* program, as x is of type Int, and assigning a Bool to x is illegal.

		e.g.

			x = "ABC"
			x = "ABCD"

		This is a *wrong* program, as x is a string of size 3 characters, and assigning a string of size 4 characters to x is illegal.

*	**Arrays**

	-	Arrays should have all elements of the same type, with the size of array being included in the type information of that array. Memory for all array objects is assigned dynamically.

		e.g.

			x = [1,2,3]
			x = [3,4,5]

		This program creates an array `x` in memory, storing 3 integers. Reassigning values to the same array is allowed, as long as type and size of the array is respected.

			x = [1,'a']

		This is a *wrong* program, as all elements of the array should be of the same type.

			x = [1,2]
			x = [1,2,3]

		This is a *wrong* program, as the size of an array can not be changed.

	-	Since arrays themselves are implicit data types, arrays of arrays (multi-dimensional arrays) can be used. However, the types and sizes of the arrays should be respected according to preceding rules.

		e.g.

			x = [[1,2],[3,4]]
			y = [5,6]
			x[1] = y
			x[1][1] = 7

		This program declares x as a 2x2 integer array, and y as a one-dimensional integer array of size two, and does some valid assignments.

	-	Arrays are special data types, with type Array(ElementType,ElementNos).

	-	Although arrays are passed to methods by reference, you can't do pointer arithmetic on them.

*	**Arithmetic and Logical Operators**

	-	unary `+,-`

	-	bitwise `~, &, |, ^, <<, >>`

	-	arithmetic `+, -, *, /, %`

	-	boolean `!, &&, ||`

	-	comparison `>, <, <=, >=, ==, !=`

	-	assignment `+=, -=, *=, /=`

*	**Basic imperative constructs**

	-	*if-elsif-else*

			if check-expr then(optional)
				stmt-block

			elsif check-expr then(optional)
				stmt-block

			else
				stmt-block
			end

	-	*until*

			until check-expr do(optional)
				stmt-block
			end

	-	*while*

			while check-expr do(optional)
				stmt-block
			end


*	**Methods**

	-	Definition

			def ReturnType methodName (arguments)
				method-body
			end

	-	ReturnType can be a class object, Int, Bool, Void, Char or String(#x). All the return statements in the method body should return values accordingly

	-	If no arguments are being passed to the method, () is optional

	-	Arguments are provided with types

		e.g.

			def Int factorial (Int x)
				if x <= 0
					return 1
				end
				return x*factorial(x-1)
			end

	-	Methods can only access the arguments, global variables and the instance and class variables from the class containing the method

	-	Method name should follow one of the following rules:

		+	It may begin with _ or a-z, and contain a-z, A-Z, 0-9 or _

		+	It may begin with _,a-z or A-Z, contain a-z, A-Z, 0-9 or _ and end with ?

*	**Classes**

	-	Definition

			class className < parentClass

			   [only class variable operations]

			   def className new (arguments)
			       body-of-method-new
			   end

			   [other class methods]
			   
			end

	-	Class name should start with A-Z, and contain a-z, A-Z, 0-9 or _

	-	The class can have any number of valid class variable operations interspersed in the class method definitions.

	-	Every class *should* have a `new` method, with return type as the class name. Apart from this, `new` method is like any other method. Declare `new` method before any other method in the class.

	-	Any instance variable used in any class method should be declared in the `new` method of the class.

	-	All the instance variables, class variables and methods are inherited from the parent class. However, overriding methods may be declared in the class.

*	**Variable Types**

	-	*Global* variable names start with $. They can be declared and used anywhere in the whole program, with a global scope.

	-	*Local* variable names start with _ or a-z. They have a scope limited to the current method definition.

	-	*Class* variable names start with @@. They are shared across all the instances of a class. They are declared and used anywhere in the body of the class, but not inside class methods. While dereferencing from an object, drop the @@. Class variables can also be accessed without using an object.

		e.g.

			class Try
				@@a = 1
				@@b = 2
				def Try new
					Try.a = 2
				end
			end

			x = Try.new()
			x.a = 3
			Try.b = 4

	-	*Instance* variable names start with @. They are declared in the `new` method of the class. They are inherited by the children of the class. While dereferencing from an object, drop the @.

		e.g.

			class Try
				def Try new
					@c = 3
				end
			end

			x = Try.new()
			x.c = 4

*	**Input/Output**

	-	The keywords `puts` and `gets` can be used with strings, characters and integers to do input and output operations.

	-	`puts` outputs a line break after every call

		e.g.

			a = 1
			gets a
			puts a



##Instructions to run
To run, run the following command:

	./compile test/NAME_OF_TEST_FILE.rb

This will give a file NAME_OF_TEST_FILE.s in the root folder with the MIPS assembly code.

To simulate the MIPS code on SPIM simulator, use the following command:

	spim -file NAME_OF_TEST_FILE.s


##References
-	[CS335A - Compiler Design](http://web.cse.iitk.ac.in/users/subhajit/courses/CS335_Jan2015/CS335.php) (2014-15/Spring at IIT Kanpur by Prof. Subhajit Roy)

-	[Documentation for PLY](http://www.dabeaz.com/ply/)

-	[Documentation for Ruby](http://ruby-doc.org/)