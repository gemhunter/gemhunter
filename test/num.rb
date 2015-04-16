def Int cube(Int x)
	def Int square(Int x)
		return x*x
	end
	return x * square(x)
end

def Int fact(Int x)
	if x<=0
		return 1
	end
	return x*fact(x-1)
end

a = 0
gets a
puts cube(a)
puts fact(a)

if a == 0
    puts "Enter non-zero value"
    b = 0
    gets b
end

#puts square(a)

#puts b
