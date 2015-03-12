(0...10).class()    # => Range
(0..9).class()      # => Range
(0..2).first()     # => 0
(0..2).last()       # => 2 
(1..5).next()       # invalid, Range class doesent have next method
 
(0..3).each { |x| print(x) }              # outputs, 0123
(0...10).reverse_each { |x| print(x) }    # outputs, 9876543210
(-3..3).each().abs { |x| print(x) }         # invalid
(-3..3).each { |x| print(x.abs) }         # outputs, 3210123
 
# Enumerator dosent require 'each' to iterate
5.upto(1).class()                         # => Enumerator
5.upto { |x| print(x) }               # outputs, 5678910 
(5..10).each { |x| print(x) }             # outputs, 5678910


#!/usr/bin/ruby




dec = 10
hex = 0xAF10
bin = 0b1010

class Customer
   @@no_of_customers=0
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end
   def display_details()
      puts("Customer id #@cust_id")
      puts("Customer name #@cust_name")
      puts("Customer address #@cust_addr")
    end
    def total_no_of_customers()
       @@no_of_customers += 1
       #puts "Total number of customers: #@@no_of_customers"
    end
end

# Create Objects
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.total_no_of_customers()
cust2.total_no_of_customers()
