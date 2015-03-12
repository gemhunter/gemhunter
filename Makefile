pdf :  src/lexer.py scripts/getdot.py src/parser.py scripts/makepdf.sh
	cp scripts/makedot.py bin/makepdf.py
	python -m py_compile bin/makepdf.py
	chmod 777 bin/makepdf
	rm bin/makepdf.py

all : src/lexer.py scripts/getdot.py src/parser.py scripts/makedot.py
	cp scripts/makedot.py bin/makedot.py
	python -m py_compile bin/makedot.py
	chmod 777 bin/makedot
	rm bin/makedot.py

parser: info/cfg.bnf scripts/generate_parser.py
	python scripts/generate_parser.py info/cfg.bnf
	mv parser.py src/parser.py

clean : 
	rm -rf *.ps *.dot *.txt parsetab.* *.out *~ *pyc *.pdf parser.py
