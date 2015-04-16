def Int prod(Array(Int,3) arr)
	ans = 1
	for i in arr
		ans *= i
	end
	#break redo next
	return ans
end

$n = 4

sum = 0
for i in 1..7
	if i == 5
		next
	end
	sum += i
end
puts sum

class Abc
	@@a = 1
	def Abc new()
		@var = 1
		@arr = [[1,-2],[-3,4],[5,6]]
	end
	def Void incvar(Int a)
		@var = @var + a
		def Void printlen()
			puts 1000
		end
		printlen()
	end
	def Int flatten(Array(Array(Int,3),4) arr)
		ans = 0
		for x in arr
			do
				ans += prod(x)
		end
		return ans
	end
	def Int flatten1(Array(Array(Int,3),4) arr)
		ans = 0
		i = 0
		while i < len(arr)
			j = 0
			while j < len(arr[i])
				ans += arr[i][j]
				j += 1
			end
			if ans == 3
				puts i
				next
			end
			if ans == 6
				puts i
				redo
			end
			if ans == 9
				puts i
				break
			end
			i += 1
		end
		return ans
	end
	def Int id()
		return @var
	end
end

class Xyz < Abc
	def Xyz new()
		@a = 20
		super()
	end
	def Void incvar(Int a)
		super(a)
	end
	def Void id(Int x)
		@a = @a + x
		puts @a
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
puts x.id()
x.incvar(4)
# puts x.flatten([[1,1,1],[1,1,1],[1,1,1],[1,1,1]])
y = Xyz.new()
puts y.flatten([[1,2,3],[-1,2,3],[1,2,3],[1,2,3]])
puts y.a
y.id(1)
puts y.a

a = 1
b = 2

if a == 1
	puts "I'm here"
	if b == 1
		puts "I shouldn't be here"
	elsif b == 2
		puts "Wrong again"
	else
		puts "Yay!!!"
	end
end	

#puts here
y.incvar(1)
puts fact(y.var)