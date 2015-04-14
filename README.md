gemhunter - A minimal Ruby compiler
===================================

Ruby is a powerful language with support for various programming paradigms and a lot of syntactic sugar. In *gemhunter*, we have eliminated a lot of extra features of Ruby to give a clean implementation, supporting our own brand of Ruby, with minor tweaks from the original.

*gemhunter* is written completely in Python, making use of the PLY (Python Lex-Yacc).

##Language specifications:

*	###Basic data types###

	-	Int (signed integers)

	-	Char (ASCII characters, uses single quotes e.g. 'a', and supports `\n,\t,\',\\,\0` escape sequences)

	-	Bool (boolean `true` and `false`)

	-	Void (can assign value `nil`)

	-	String (fixed-size, *not* supporting escape sequences, indexed from 0)

*	###Variable declaration and assignment###

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

*	###Arrays###

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


*	###Arithmetic and Logical Operators###

	-	unary `+,-`

	-	bitwise `~, &, |, ^, <<, >>`

	-	arithmetic `+, -, *, /, %`

	-	boolean `!, &&, ||`

	-	comparison `>, <, <=, >=, ==, !=`

	-	assignment `+=, -=, *=, /=`

*	###Basic imperative constructs###

	-	**if-elsif-else**

			if check-expr then(optional)
				stmt-block

			elsif check-expr then(optional)
				stmt-block

			else
				stmt-block
			end

	-	**until**

			until check-expr do(optional)
				stmt-block
			end

	-	**while**

			while check-expr do(optional)
				stmt-block
			end


*	###Functions###

	-	Definition



To run the compiler, use the following command:
`bin/irgen.py test/nameOfTestFile`

This generates output.out file in root folder

We do not provide a makefile since running python is too easy.

To clean directory run `make clean`
