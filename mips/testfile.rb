def Int findFact(Int x)
	if x==0
		return 1
	end
	return x*findFact(x-1)
end

class A
	@@g = 3
	def A new()
		@a = "You're a basic"
		@b = 4
	end
	def Int fact()
		return findFact(@b)
	end
end

class B < A
	def B new()
		@b = 5
	end
	def Int fact()
		x = "I'm here"
		puts x
		puts '\n'
		return findFact(@b)/@b
	end
	def Int addtob(Int x)
		return x + @b + fact()
	end
end

#x = B.new()
#puts x.addtob(5)
x = true
y = false
z = x&&y
until z do
	puts '\n'
	z = !z
end


b = ["haha","hads"]
puts b[1]
puts '\n'
puts b[0]
puts '\n'