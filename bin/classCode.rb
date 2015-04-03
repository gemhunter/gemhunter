$a = 1
a = 1
class Customer
	@@a = $a + $a
	@@y = 1 + @@a
	def Customer new()
		@p = 3
		@pro = 4
	end
	def Int ha(Int a)
		@p = 4
		a = @p
		a += 4
		return a - @p * $a
	end
end
class Brother < Customer
	@@b = $a + $a
	def Brother new()
		@a = 1
	end
	def Int ha1(Int a, Float b)
		@p = 4
		a = @p
		a += ha(@p)
		return a - @pro
	end
end

class Sister
	def Sister new(Brother a)
		@a = a
	end
end

bro = Brother.new()
sis = Sister.new(bro)
sis.a.pro + 3
q = sis.a.ha(3) + 4
