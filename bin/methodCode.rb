a = 1
def thisIsAFunction(Int x, Array(Int, 10) y, Int c)
  a = x
  b = a < 2
  if b then
	  return y
  end
  while a < 6 do
	  if a > c then
		  return y
	  end
	  a += 1
  end
  return y
end
a=4
y = "ha"
