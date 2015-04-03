class A
	@@a = 2
	def A new()
		@b = a
		@t = 5 + @b
	end
	def Int ha()
		return @b
	end
end
a = A.new()
