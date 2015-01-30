hex = [(0..9),('A'..'F')]
hex.each { |x| x.each { |y| print y }}    # outputs, 0123456789ABCDEF
 
# declare an array of arrays
nums = [[0,1], [2,3,4,5,6,7], [8,9], ['A','B','C','D','E','F']]
binary = nums[0]                         # => [0, 1]
octal = nums[0] + nums[1]                # => [0, 1, 2, 3, 4, 5, 6, 7]
decimal = nums[0] + nums[1] + nums[2]    # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
hexadecimal = nums.flatten               # => [0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F']
octal = (binary + octal).uniq            # => [0, 1, 2, 3, 4, 5, 6, 7]
 
a = [0, 1, 2, 3, 4, 5]    # array of 6 elements
b = a.map { |x| 2**x }    # => [1, 2, 4, 8, 16, 32]