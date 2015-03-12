python generate_parser.py
python parser.py $1
python getdot.py > out.dot
dot -Tpdf out.dot > out.pdf
