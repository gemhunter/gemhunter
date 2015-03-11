all : bnf dot
	dot -Tps out.dot >out.ps
	evince out.ps

dot : lexer.py in getdot.py
	python newparser.py <in
	python getdot.py >out.dot

bnf: cfg.bnf getparser.py
	python getparser.py
clean : 
	rm -rf *.ps *.dot *.txt parsetab.* *.out *~ *pyc
