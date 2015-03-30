$a = 1
a = 1
class Customer
	@@a = $a + $a
	@@y = 1
end

class Brother < Customer 
	@@b = $a + $a
end
