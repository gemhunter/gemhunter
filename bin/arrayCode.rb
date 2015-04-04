def Int fn(Array(Array(Int, 3), 4) arr)
	return 1
end
a = 10
b = [a, a, 7]
p = [[a,a,a], [a,7,a], [7,a,7], [7,7,7] ]
a = fn(p)

q = Array(Int, 4)[3] 
w = 2
e = q[w]
r = [2,3,4]

r[0] = w
p[1][2] = r[3]
