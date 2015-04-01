a = 1
def Float tiaf(Int x, Float y, Int c)
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
def Void noReturn
	a = 1
	pol= tiaf(a, 0.96 - 0.124e12, 2) + 0.4
end
a=4
y = "ha"
e = .5 !=  noReturn()
q = e || a > 4
