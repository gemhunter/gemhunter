#$a = 1
#a = 1
class Customer
	#@@a = $a + $a
	#@@y = 1 + @@a
	def Customer new()
		@a
	end
end
class Brother < Customer 
	#@@b = $a + $a
	def Brother new()
		x = 1
	end
end
