#!/usr/bin/ruby	# 
 
puts "Hello World"	# IDENTIFIER STRING 
 
a = 9	# IDENTIFIER EQUAL INT 
 
$b = 11	# IDENTIFIER EQUAL INT 
if a >= 10 then	# KEYWORD_IF IDENTIFIER GTEQUAL INT KEYWORD_THEN 
  puts "Got ya!"	# IDENTIFIER STRING 
else	# KEYWORD_ELSE 
  puts "didn't get ya!"	# IDENTIFIER STRING 
end	# KEYWORD_end 
 
 
$i = 0	# IDENTIFIER EQUAL INT 
$num = 5 #Here I am	# IDENTIFIER EQUAL INT 
 
=begin 
adsf 
asdf 
asdf 
=end 
 
while $i < $num  do	# KEYWORD_WHILE IDENTIFIER LT IDENTIFIER KEYWORD_DO 
   puts("Inside the loop i = #$i" )	# IDENTIFIER LPAREN STRING RPAREN 
   $i +=1	# IDENTIFIER PLUSEQ INT 
end	# KEYWORD_end 
 
$i = 0	# IDENTIFIER EQUAL INT 
$num = 5	# IDENTIFIER EQUAL INT 
 
until $i > $num  do	# KEYWORD_UNTIL IDENTIFIER GT IDENTIFIER KEYWORD_DO 
   puts("Inside the loop i = #$i" )	# IDENTIFIER LPAREN STRING RPAREN 
   $i +=1	# IDENTIFIER PLUSEQ INT 
end	# KEYWORD_end 
 
(0..5).each do |i|	# LPAREN INT SEQIN INT RPAREN DOT IDENTIFIER KEYWORD_DO VERBAR IDENTIFIER VERBAR 
   puts "Value of local variable is #{i}"	# IDENTIFIER STRING 
end	# KEYWORD_end 
 
names = Array.new(20)	# IDENTIFIER EQUAL CONST DOT IDENTIFIER LPAREN INT RPAREN 
puts names.size  	# IDENTIFIER IDENTIFIER DOT IDENTIFIER 
puts names.length	# IDENTIFIER IDENTIFIER DOT IDENTIFIER 
 
 
def say_hello(name)	# KEYWORD_DEF IDENTIFIER LPAREN IDENTIFIER RPAREN 
   var = "Hello, " + name	# IDENTIFIER EQUAL STRING PLUS IDENTIFIER 
   return var	# KEYWORD_RETURN IDENTIFIER 
end	# KEYWORD_end 
 
puts say_hello("John Doe")	# IDENTIFIER IDENTIFIER LPAREN STRING RPAREN 
 
 
puts -a	# IDENTIFIER MINUS IDENTIFIER 
 
puts a>2 ? "I will marry you" : "Will you marry me?" 	# IDENTIFIER IDENTIFIER GT INT TER STRING COLON STRING 
 
case a	# KEYWORD_CASE IDENTIFIER 
when 1..5	# KEYWORD_WHEN INT SEQIN INT 
  puts "It's between 1 and 5"	# IDENTIFIER STRING 
when 6	# KEYWORD_WHEN INT 
  puts "It's 6"	# IDENTIFIER STRING 
when String	# KEYWORD_WHEN CONST 
  puts "You passed a string"	# IDENTIFIER STRING 
else	# KEYWORD_ELSE 
  puts "You gave me \"a\" -- I have no idea what to do with that."	# IDENTIFIER STRING 
end	# KEYWORD_end
