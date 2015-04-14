def Int m1(Int x)
	if x < 0 then
		return 0
	end
	def Int m3(Int x)
		return x*x*x
	end
	def Int m2(Int x)
		if x < 0 then
			return x*x*m1(x-1)
		end
		def Int m4(Int x)
			return m4(x)
		end
		return m4(x+2)
	end
	return m2(x) + m3(x) + m1(x-1)
end
a = m1(5)
