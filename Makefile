pdf : bnf dot
	dot -Tpdf out.dot > out.pdf

dot : bnf lexer.py getdot.py
	python parser.py $1
	python getdot.py > out.dot

bnf: cfg.bnf generate_parser.py
	python generate_parser.py

clean : 
	rm -rf *.ps *.dot *.txt parsetab.* *.out *~ *pyc *.pdf parser.py
