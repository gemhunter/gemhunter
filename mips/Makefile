all: test

test: testfile asgen.py
	python asgen.py testfile >testfile.out
	spim -file testfile.out

clean:
	rm testfile.out
