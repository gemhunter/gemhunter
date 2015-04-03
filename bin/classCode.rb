$a = 1
a = 1
class Customer
	@@a = $a + $a
	@@y = 1 + @@a
	def Customer new()
		@p = 3
		@pro = 4
	end
	def Int ha()
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
	def Int ha()
		@p = 4
		a = @p
		a += ha()
		return a - @pro
	end
end
