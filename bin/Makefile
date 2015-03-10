old :  calc.py in
	python calc.py <in >out.dot
	dot -Tps out.dot >out.ps
	evince out.ps

new: calcdebug.py in getdot.py
	python calcdebug.py <in
	python getdot.py

clean : 
	rm -rf *.ps *.dot *.txt parsetab.* *.out *~ *pyc
