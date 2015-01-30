hex = [(0..9),('A'..'F')]	# IDENTIFIER EQUAL LSQB LPAREN INT SEQIN INT RPAREN COMMA LPAREN STRING SEQIN STRING RPAREN RSQB 
hex.each { |x| x.each { |y| print y }}    # outputs, 0123456789ABCDEF	# IDENTIFIER DOT IDENTIFIER LBRACE VERBAR IDENTIFIER VERBAR IDENTIFIER DOT IDENTIFIER LBRACE VERBAR IDENTIFIER VERBAR IDENTIFIER IDENTIFIER RBRACE RBRACE 
  
# declare an array of arrays 
nums = [[0,1], [2,3,4,5,6,7], [8,9], ['A','B','C','D','E','F']]	# IDENTIFIER EQUAL LSQB LSQB INT COMMA INT RSQB COMMA LSQB INT COMMA INT COMMA INT COMMA INT COMMA INT COMMA INT RSQB COMMA LSQB INT COMMA INT RSQB COMMA LSQB STRING COMMA STRING COMMA STRING COMMA STRING COMMA STRING COMMA STRING RSQB RSQB 
binary = nums[0]                         # => [0, 1]	# IDENTIFIER EQUAL IDENTIFIER LSQB INT RSQB 
octal = nums[0] + nums[1]                # => [0, 1, 2, 3, 4, 5, 6, 7]	# IDENTIFIER EQUAL IDENTIFIER LSQB INT RSQB PLUS IDENTIFIER LSQB INT RSQB 
decimal = nums[0] + nums[1] + nums[2]    # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]	# IDENTIFIER EQUAL IDENTIFIER LSQB INT RSQB PLUS IDENTIFIER LSQB INT RSQB PLUS IDENTIFIER LSQB INT RSQB 
hexadecimal = nums.flatten               # => [0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F']	# IDENTIFIER EQUAL IDENTIFIER DOT IDENTIFIER 
octal = (binary + octal).uniq            # => [0, 1, 2, 3, 4, 5, 6, 7]	# IDENTIFIER EQUAL LPAREN IDENTIFIER PLUS IDENTIFIER RPAREN DOT IDENTIFIER 
  
a = [0, 1, 2, 3, 4, 5]    # array of 6 elements	# IDENTIFIER EQUAL LSQB INT COMMA INT COMMA INT COMMA INT COMMA INT COMMA INT RSQB 
b = a.map { |x| 2**x }    # => [1, 2, 4, 8, 16, 32]	# IDENTIFIER EQUAL IDENTIFIER DOT IDENTIFIER LBRACE VERBAR IDENTIFIER VERBAR INT POW IDENTIFIER RBRACE HASH EQUAL GT LSQB INT COMMA INT COMMA INT COMMA INT COMMA INT COMMA INT RSQB
