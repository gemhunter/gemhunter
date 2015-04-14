$b = 2
puts $b
$a = [5,4,7,9,0,3,2,11,1]

for i in 0..(len($a)-1)
	puts $a[i]
end

def Void insertion_sort()
	for i in 0..(len($a)-1)
		x = $a[i]
		j = i
		while j>0 && $a[j-1]>$a[i]
			$a[j] = $a[j-1]
			j -= 1
		end
		$a[j] = x
	end
end

for i in 0..(len($a)-1)
	puts $a[i]
end