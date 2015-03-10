all : dot
	dot -Tps out.dot >out.ps
	evince out.ps

dot : calc.py in getdot.py
	python calc.py <in
	python getdot.py >out.dot

clean : 
	rm -rf *.ps *.dot *.txt parsetab.* *.out *~ *pyc
