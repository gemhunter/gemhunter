class A
	@@a = 2
	def A new()
		@b = 2
		@t = 5 + @b
	end
	def Void inc()
		A.a = A.a +  1
	end
	def Int ha()
		return @b
	end
end
a = A.new()
y = a.b + 5
y = a.a + 5
