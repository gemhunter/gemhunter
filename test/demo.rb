#!/usr/bin/ruby

puts "Hello World"

a = 9

$b = 11
if a >= 10 then
  puts "Got ya!"
else
  puts "didn't get ya!"
end


$i = 0
$num = 5 #Here I am

=begin
adsf
asdf
asdf
=end

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

$i = 0
$num = 5

until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

(0..5).each do |i|
   puts "Value of local variable is #{i}"
end

names = Array.new(20)
puts names.size  
puts names.length


def say_hello(name)
   var = "Hello, " + name
   return var
end

puts say_hello("John Doe")


puts -a

puts a>2 ? "I will marry you" : "Will you marry me?" 

case a
when 1..5
  puts "It's between 1 and 5"
when 6
  puts "It's 6"
when String
  puts "You passed a string"
else
  puts "You gave me \"a\" -- I have no idea what to do with that."
end