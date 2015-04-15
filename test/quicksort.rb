$x = Int[1000]
def Void swap(Int a, Int b)
	temp = $x[a]
	$x[a] = $x[b]
	$x[b] = temp
end
def Void quicksort(Int a, Int b)
	if a >= b
		return
	end
	curr = a+1
	mid = a
	while curr <=b
		if $x[curr] < $x[a]
			#Swap mid+1 and curr, increment mid
			swap(mid+1, curr)
			mid +=1
		end
		curr+=1
	end
	#swap a and mid
	swap(a,mid)
	quicksort(a, mid-1)
	quicksort(mid+1, b)
end
n = 0
gets n
if n <= 0
	puts "Give > 0 number"
	exit
end
if n > 1000
	puts "Give smaller number"
	exit
end
puts "Now enter the numbers"
i=0
while i < n
	gets $x[i]
	i+=1
end
puts "Sorting!"
quicksort(0,n-1)
puts "Sorted!"
i=0
while i<n
	puts $x[i]
	i+=1
end
