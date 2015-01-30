(0...10).class    # => Range	# LPAREN INT SEQEX INT RPAREN DOT KEYWORD_CLASS 
(0..9).class      # => Range	# LPAREN INT SEQIN INT RPAREN DOT KEYWORD_CLASS 
(0..2).first      # => 0	# LPAREN INT SEQIN INT RPAREN DOT IDENTIFIER 
(0..2).last       # => 2 	# LPAREN INT SEQIN INT RPAREN DOT IDENTIFIER 
(1..5).next       # invalid, Range class doesent have next method	# LPAREN INT SEQIN INT RPAREN DOT KEYWORD_NEXT 
  
(0..3).each { |x| print x }              # outputs, 0123	# LPAREN INT SEQIN INT RPAREN DOT IDENTIFIER LBRACE VERBAR IDENTIFIER VERBAR IDENTIFIER IDENTIFIER RBRACE 
(0...10).reverse_each { |x| print x }    # outputs, 9876543210	# LPAREN INT SEQEX INT RPAREN DOT IDENTIFIER LBRACE VERBAR IDENTIFIER VERBAR IDENTIFIER IDENTIFIER RBRACE 
(-3..3).each.abs { |x| print x }         # invalid	# LPAREN MINUS INT SEQIN INT RPAREN DOT IDENTIFIER DOT IDENTIFIER LBRACE VERBAR IDENTIFIER VERBAR IDENTIFIER IDENTIFIER RBRACE 
(-3..3).each { |x| print x.abs }         # outputs, 3210123	# LPAREN MINUS INT SEQIN INT RPAREN DOT IDENTIFIER LBRACE VERBAR IDENTIFIER VERBAR IDENTIFIER IDENTIFIER DOT IDENTIFIER RBRACE 
  
# Enumerator dosent require 'each' to iterate 
5.upto(10).class                         # => Enumerator	# INT DOT IDENTIFIER LPAREN INT RPAREN DOT KEYWORD_CLASS 
5.upto(10) { |x| print x }               # outputs, 5678910 	# INT DOT IDENTIFIER LPAREN INT RPAREN LBRACE VERBAR IDENTIFIER VERBAR IDENTIFIER IDENTIFIER RBRACE 
(5..10).each { |x| print x }             # outputs, 5678910	# LPAREN INT SEQIN INT RPAREN DOT IDENTIFIER LBRACE VERBAR IDENTIFIER VERBAR IDENTIFIER IDENTIFIER RBRACE 
 
 
#!/usr/bin/ruby 
 
 
class Customer	# KEYWORD_CLASS CONST 
   @@no_of_customers=0	# IDENTIFIER EQUAL INT 
   def initialize(id, name, addr)	# KEYWORD_DEF IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER COMMA IDENTIFIER RPAREN 
      @cust_id=id	# IDENTIFIER EQUAL IDENTIFIER 
      @cust_name=name	# IDENTIFIER EQUAL IDENTIFIER 
      @cust_addr=addr	# IDENTIFIER EQUAL IDENTIFIER 
   end	# KEYWORD_end 
   def display_details()	# KEYWORD_DEF IDENTIFIER LPAREN RPAREN 
      puts "Customer id #@cust_id"	# IDENTIFIER STRING 
      puts "Customer name #@cust_name"	# IDENTIFIER STRING 
      puts "Customer address #@cust_addr"	# IDENTIFIER STRING 
    end	# KEYWORD_end 
    def total_no_of_customers()	# KEYWORD_DEF IDENTIFIER LPAREN RPAREN 
       @@no_of_customers += 1	# IDENTIFIER PLUSEQ INT 
       puts "Total number of customers: #@@no_of_customers"	# IDENTIFIER STRING 
    end	# KEYWORD_end 
end	# KEYWORD_end 
 
# Create Objects 
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")	# IDENTIFIER EQUAL CONST DOT IDENTIFIER LPAREN STRING COMMA STRING COMMA STRING RPAREN 
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")	# IDENTIFIER EQUAL CONST DOT IDENTIFIER LPAREN STRING COMMA STRING COMMA STRING RPAREN 
 
# Call Methods 
cust1.total_no_of_customers()	# IDENTIFIER DOT IDENTIFIER LPAREN RPAREN 
cust2.total_no_of_customers()	# IDENTIFIER DOT IDENTIFIER LPAREN RPAREN
