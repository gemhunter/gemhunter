$b = 2
$a = [5,4,7,9,0,3,2,11,1]

for i in 0..(len($a)-1)
	puts $a[i]
end

def Void insertion_sort()
	for i in 0..(len($a)-1)
		j = i
		while j>0 && $a[j-1]>$a[j]
			temp = $a[j]
			$a[j] = $a[j-1]
			$a[j-1] = temp
			j -= 1
			puts j
		end
	end
end

<<<<<<< HEAD

insertion_sort()

=======
puts "in sorted order"
insertion_sort()
>>>>>>> 3b52406acf212f5901dc129dc131e766031743da
for i in 0..(len($a)-1)
	puts $a[i]
end
