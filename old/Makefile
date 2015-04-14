parser: info/cfg.bnf scripts/generate_parser.py
	python scripts/generate_parser.py info/cfg.bnf
	mv parser.py src/parser.py
clean : 
	rm -rf parsetab.* parselog.* parser.out treefile* actions* *.pyc */*.pyc *.dot *.pdf *.out
	rm -rf bin/*.pyc bin/parsetab.py
