all: test

test: testfile asgen.py
	python asgen.py testfile
	spim -file testfile.s

clean:
	rm testfile.out
