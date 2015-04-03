$a = 1
a = 1
class Customer
	@@a = $a + $a
	@@y = 1 + @@a
	def Customer new()
		@p = 3
	end
end
class Brother < Customer 
	@@b = $a + $a
	def Brother new()
		x = 1
		@x = 1
	end
end
