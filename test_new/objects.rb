def Int test(Array(Int,4) arr, Int i)
	if i == 3 
		return i
	end
	return arr[i] + test(arr,i+1)
end

class Abc
	@@a = 1
	def Abc new()
		@var = 1
		@tvar = 2
		#@a = 1
	end
	def Void incvar(Int a)
		@var = @var + a
	end
end

$n = 4

class Xyz < Abc
	def Xyz new()
		@a = 20
		super()
	end
	def Void incvar(Int a)
		super(a)
	end
end

def Int fact(Int n)
	if n == 1
		return 1
	else
		return n * fact(n-1)
	end
end

x = Abc.new()
puts x.a
$n = $n + 1
puts $n
x.incvar(4)
y = Xyz.new()
puts y.a
puts y.var
puts "here"
y.incvar(1)
puts fact(y.var)

a = [1,2,3,4]

puts test(a,0)