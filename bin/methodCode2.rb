def Int m1(Int x)
	def Int m2(Int x)
		return x*x
	end
	def Int m3(Int x)
		return x*x*x
	end
	return m2(x) + m3(x) + m1(x-1)
end


