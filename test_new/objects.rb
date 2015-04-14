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
		@var = Abc.a
		@nvar = $n
		@b = 1
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
puts '\n'
$n = $n + 4
puts $n
puts '\n'
x.incvar(4)
y = Abc.new()
puts y.nvar
puts " here"
puts '\n'
#puts y.incvar(1)
puts fact(y.var)
puts '\n'

#puts fact(x.var)
#puts '\n'

a = [1,2,3,4]

puts test(a,0)