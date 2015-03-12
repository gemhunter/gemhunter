python ../src/parser.py $1

python getdot.py > out.dot
dot -Tpdf out.dot > out.pdf
