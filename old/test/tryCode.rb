class A
	def A new()
		@p = 2
	end
end
class B 
	def B new()
		@obj = A.new()
	end
end
b = B.new()
3 +  b.obj.p
