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

puts "Until example"

x = 1
until x >= 20
	puts x
	x+=1
	if x<15
		x+=2
		next
	else
        x = 21
        c = 'h'
	end
    #puts c
end
puts x
