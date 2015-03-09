all: dot ps
	evince out.ps
dot :  calc.py
	python calc.py <in >out.dot

ps : out.dot
	dot -Tps out.dot >out.ps

extract: orig.py
	python orig.py <in

clean : 
	rm -rf *.ps *.dot
