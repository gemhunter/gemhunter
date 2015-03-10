all : dot bnf
	dot -Tps out.dot >out.ps
	evince out.ps

dot : calc.py in getdot.py
	python newparser.py <in
	python getdot.py >out.dot

bnf: calc.bnf getparser.py
	python getparser.py
clean : 
	rm -rf *.ps *.dot *.txt parsetab.* *.out *~ *pyc
