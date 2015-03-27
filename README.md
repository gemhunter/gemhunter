gemhunter - a cross compiler for Ruby, written in Python
=======================================================

***Mah Ruby, Mah rulzz***

*The compiler is written in Python, hence no executable was created for it.*

To run the compiler, use the following command:
bin/parser.py test/nameOfTestFile

This generates a dot file in root folder of the same name of input file
To make a pdf run ./scripts/makepdf nameOfDotFile

We do not provide a makefile since running python is too easy.

Note: If you wish to change the cfg, make your changes in info/cfg.bnf. Then run make parser

To clean directory run make clean
