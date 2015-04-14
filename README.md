gemhunter - A minimal Ruby compiler
===================================

Ruby is a powerful language with support for various programming paradigms and a lot of syntactic sugar. In *gemhunter*, we have eliminated a lot of extra features of Ruby to give a clean implementation, supporting our own brand of Ruby, with minor tweaks from the original.

*gemhunter* is written completely in Python, making use of the PLY (Python Lex-Yacc).

##Some salient features:
-Support for basic arithmetic and logical expressions
	-`unary +,-`
	-`bitwise !,&,|`
	-`+,-,*,/,%`
	-`boolean !,&&,,^,||,<<,>>

To run the compiler, use the following command:
`bin/irgen.py test/nameOfTestFile`

This generates output.out file in root folder

We do not provide a makefile since running python is too easy.

To clean directory run `make clean`
