def Bool fn()
	puts "I'm called"
	return true
end
a = false
if a && fn() then
	puts "a. condition true"
else
	puts "a. condition false"
end
b = true
if b && fn() then
	puts "b. condition true"
else
	puts "b. condition false"
end
