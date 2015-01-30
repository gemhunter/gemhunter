#!/usr/bin/ruby	# 
 
# 
# This creates a simple animation of five balls bouncing around inside a  
# rectagle.  Balls bounce off the sides, but pass through each other.  Nothing 
# fancy. 
# 
 
# Import the library. 
require 'tk'	# IDENTIFIER STRING 
 
# Dot diameter. 
Diameter = 10	# CONST EQUAL INT 
 
# Update rate (ms). 
Frequency = 25	# CONST EQUAL INT 
 
# Canvas size. 
Width = 400	# CONST EQUAL INT 
Height = 300	# CONST EQUAL INT 
 
# Set defaults.  Some we keep in constants to use later. 
BG = '#ccccff'	# CONST EQUAL STRING 
TkOption.add('*background', BG)	# CONST DOT IDENTIFIER LPAREN STRING COMMA CONST RPAREN 
 
# Root window. 
root = TkRoot.new('background' => BG) { title 'Bouncy, Bouncy' }	# IDENTIFIER EQUAL CONST DOT IDENTIFIER LPAREN STRING EQUAL GT CONST RPAREN LBRACE IDENTIFIER STRING RBRACE 
 
# Canvas. 
c = TkCanvas.new(root) {	# IDENTIFIER EQUAL CONST DOT IDENTIFIER LPAREN IDENTIFIER RPAREN LBRACE 
  width Width	# IDENTIFIER CONST 
  height Height	# IDENTIFIER CONST 
  pack('fill' => 'both')	# IDENTIFIER LPAREN STRING EQUAL GT STRING RPAREN 
}	# RBRACE 
 
# This is the circle that wanders around the canvas. 
class MovingCircle < TkcOval 	# KEYWORD_CLASS CONST LT CONST 
  # Create with a moving circle on the canvas c with indicated color. 
  def initialize(c, color)	# KEYWORD_DEF IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER RPAREN 
    # Remember the canvas. 
    @canv = c	# IDENTIFIER EQUAL IDENTIFIER 
 
    # Choose an initial location at random and create the object there. 
    @xpos = rand(Width - Diameter)	# IDENTIFIER EQUAL IDENTIFIER LPAREN CONST MINUS CONST RPAREN 
    @ypos = rand(Height - Diameter)	# IDENTIFIER EQUAL IDENTIFIER LPAREN CONST MINUS CONST RPAREN 
    super(c, @xpos, @ypos, @xpos + Diameter, @ypos + Diameter, 'fill' => color)	# KEYWORD_SUPER LPAREN IDENTIFIER COMMA IDENTIFIER COMMA IDENTIFIER COMMA IDENTIFIER PLUS CONST COMMA IDENTIFIER PLUS CONST COMMA STRING EQUAL GT IDENTIFIER RPAREN 
 
    # Chose a velocity at random.  1 to 3 pixels per Frequency in each 
    # dimension. 
    @delx = (rand(3)+1)*(if rand(2) == 1 then 1 else -1 end)	# IDENTIFIER EQUAL LPAREN IDENTIFIER LPAREN INT RPAREN PLUS INT RPAREN STAR LPAREN KEYWORD_IF IDENTIFIER LPAREN INT RPAREN EQEQUAL INT KEYWORD_THEN INT KEYWORD_ELSE MINUS INT KEYWORD_end RPAREN 
    @dely = (rand(3)+1)*(if rand(2) == 1 then 1 else -1 end)	# IDENTIFIER EQUAL LPAREN IDENTIFIER LPAREN INT RPAREN PLUS INT RPAREN STAR LPAREN KEYWORD_IF IDENTIFIER LPAREN INT RPAREN EQEQUAL INT KEYWORD_THEN INT KEYWORD_ELSE MINUS INT KEYWORD_end RPAREN 
 
    # Start moving 
    Tk.after(Frequency, proc { self.move } )	# CONST DOT IDENTIFIER LPAREN CONST COMMA IDENTIFIER LBRACE KEYWORD_SELF DOT IDENTIFIER RBRACE RPAREN 
  end	# KEYWORD_end 
 
  # This adjusts a single dimension by one step, taking account of the 
  # walls.  Send a position, increment, and limit, and get back a new pos 
  # and new increment (which might have its sign changed). 
  def del(pos, inc, limit)	# KEYWORD_DEF IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER COMMA IDENTIFIER RPAREN 
    # Move 
    pos += inc	# IDENTIFIER PLUSEQ IDENTIFIER 
 
    # See if we hit the top or left, and reverse. 
    if pos < 0 then	# KEYWORD_IF IDENTIFIER LT INT KEYWORD_THEN 
      pos = -pos	# IDENTIFIER EQUAL MINUS IDENTIFIER 
      inc = -inc	# IDENTIFIER EQUAL MINUS IDENTIFIER 
 
    # Likewise check for hitting the right or bottom 
    elsif pos > limit - Diameter then	# KEYWORD_ELSIF IDENTIFIER GT IDENTIFIER MINUS CONST KEYWORD_THEN 
      pos = (limit - Diameter) - (pos - (limit - Diameter))	# IDENTIFIER EQUAL LPAREN IDENTIFIER MINUS CONST RPAREN MINUS LPAREN IDENTIFIER MINUS LPAREN IDENTIFIER MINUS CONST RPAREN RPAREN 
      inc = -inc	# IDENTIFIER EQUAL MINUS IDENTIFIER 
    end	# KEYWORD_end 
 
    # Send back the results. 
    return pos, inc	# KEYWORD_RETURN IDENTIFIER COMMA IDENTIFIER 
  end	# KEYWORD_end 
 
  # Move one step, then schedule the next move. 
  def move	# KEYWORD_DEF IDENTIFIER 
    # Remember current position, and compute the new one. 
    oldx, oldy = @xpos, @ypos	# IDENTIFIER COMMA IDENTIFIER EQUAL IDENTIFIER COMMA IDENTIFIER 
    @xpos, @delx = del(@xpos, @delx, Width)	# IDENTIFIER COMMA IDENTIFIER EQUAL IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER COMMA CONST RPAREN 
    @ypos, @dely = del(@ypos, @dely, Height)	# IDENTIFIER COMMA IDENTIFIER EQUAL IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER COMMA CONST RPAREN 
     
    # Tell Tk about it. 
    @canv.move(self, @xpos - oldx, @ypos - oldy)	# IDENTIFIER DOT IDENTIFIER LPAREN KEYWORD_SELF COMMA IDENTIFIER MINUS IDENTIFIER COMMA IDENTIFIER MINUS IDENTIFIER RPAREN 
 
    Tk.after(Frequency, proc { self.move } )	# CONST DOT IDENTIFIER LPAREN CONST COMMA IDENTIFIER LBRACE KEYWORD_SELF DOT IDENTIFIER RBRACE RPAREN 
  end	# KEYWORD_end 
end	# KEYWORD_end 
 
# Make several balls of different color. 
for color in [ '#FF9999', '#99FFFF', '#005588', '#992211', '#FF0055' ]	# KEYWORD_FOR IDENTIFIER KEYWORD_IN LSQB STRING COMMA STRING COMMA STRING COMMA STRING COMMA STRING RSQB 
  MovingCircle.new(c, color)	# CONST DOT IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER RPAREN 
end	# KEYWORD_end 
 
Tk.mainloop	# CONST DOT IDENTIFIER
