gemhunter - A minimal Ruby compiler
===================================

Ruby is a powerful language with support for various programming paradigms and a lot of syntactic sugar. In *gemhunter*, we have eliminated a lot of extra features of Ruby to give a clean implementation, supporting our own brand of Ruby, with minor tweaks from the original.

*gemhunter* is written completely in Python, making use of the PLY (Python Lex-Yacc).

##Salient features of our Ruby mod:

-	Basic data types

	-	Int (signed integers)

	-	Char (ASCII characters)

	-	Bool (boolean `true` and `false`)

	-	Void (can assign value `nil`)

*	Variable declaration, assignment and operations

	-	There are no explicit declarations. A variable is declared the first time something is assigned to it, using the `=` operator.
		eg.
			x = 1
			y = x
		This program declares x on line 1 and assigns a value of 1 to x.
		It then declares y and assigns the value of x to y.

	-	We *do not* support dynamic typing. Once a variable has been assigned a type, it can't be assigned values of other types.  

*	Arrays

	- 	Strings are fixed size arrays of characters

	-	Arrays of 

*	Operations on variables (basic arithmetic and logical expressions)

	-	unary `+,-`

	-	bitwise `~,&,|,^,<<,>>`

	-	arithmetic `+,-,*,/,%`

	-	boolean `!,&&,||`

	-	comparison `>,<,<=,>=,==,!=`

	-	assignment `+=,-=,*=,/=`

*	Support for basic imperative constructs

	-	if, elsif, else



To run the compiler, use the following command:
`bin/irgen.py test/nameOfTestFile`

This generates output.out file in root folder

We do not provide a makefile since running python is too easy.

To clean directory run `make clean`
