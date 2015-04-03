$a = 1
a = 1
class Customer
	@@a = $a + $a
	@@y = 1 + @@a
	def Customer new()
		@a = 1
	end
end
class Brother < Customer 
	@@b = $a + $a
end
