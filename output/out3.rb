# A solution to RubyQuiz #153.	# 
# 
# Finds the longest, non-overlapping repeated substring in its input. 
# 
# See http://www.rubyquiz.com/quiz153.html for details. 
# 
# The latest version of this solution can also be found at 
# http://learnruby.com/examples/ruby-quiz-153.shtml . 
 
# When run, the input can be on the command line, come from standard 
# input, or come from a file: 
# 
#   ruby lrs.rb banana 
#   ruby lrs.rb "Madam I'm Adam." 
#   ruby lrs.rb -f homer-illiad.txt 
#   cat homer-illiad.txt | ruby lrs.rb 
 
# The basic technique used by this solution is to create an array of 
# all suffixes of the data.  So if the input were "banana", the array 
# would contain ["banana", "anana", "nana", "ana", "na", "a"].  Then 
# we sort this array, so it would now contain ["a", "ana", "anana", 
# "banana", "na", "nana"].  Finally we can compare neighboring entries 
# in the array to see if they share a long enough prefix to beat the 
# current best. 
 
# Extra care must be taken if the substrings are not allowed to 
# overlap.  Consider the input "ananana"; the longest non-overlapping 
# substring is "ana".  The array of sorted suffixes of is ["a", "ana", 
# "anana", "ananana", "na", "nana", "nanana"].  The 2nd and 3rd items 
# can only have a match of "an" because the "ana" would overlap, and 
# the same is true with the 3rd and 4th items.  However by comparing 
# the 2nd and 4th items we can get the desired result of "ana".  So 
# under certain circumstances we have to compare an item with more 
# than just its immediate predecessor. 
 
# This program seems to run reasonably fast.  It should run in O(n * 
# log n) time in most cases, assuming that Array's sort method 
# provides that performance.  Due to the rare cases when the program 
# cannot just compare an item and its immediate predecessor, there may 
# be some strange cases where it requires O(n ** 2).  Because Ruby 
# allows a computed substring to share the data with the original 
# string (until one of the strings is altered, i.e., "copy on write"), 
# the memory used is linear to the input size. 
 
if $0	# KEYWORD_IF DOL0 
	puts "rtgty	edtrghrthethtb	wegerg	wtger"	# IDENTIFIER STRING 
end	# KEYWORD_end 
 
# returns the maximum of the two parameters 
def max(a, b)	# KEYWORD_DEF IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER RPAREN 
  a >= b ? a : b	# IDENTIFIER GTEQUAL IDENTIFIER TER IDENTIFIER COLON IDENTIFIER 
end	# KEYWORD_end 
 
# Return the longest common prefix between two strings.  If max is 
# specified then the longest common prefix cannot exceed it 
def longest_common_prefix(s1, s2, max = nil)	# KEYWORD_DEF IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER COMMA IDENTIFIER EQUAL KEYWORD_NIL RPAREN 
  l1, l2 = s1.size, s2.size	# IDENTIFIER COMMA IDENTIFIER EQUAL IDENTIFIER DOT IDENTIFIER COMMA IDENTIFIER DOT IDENTIFIER 
  min = l1 < l2 ? l1 : l2	# IDENTIFIER EQUAL IDENTIFIER LT IDENTIFIER TER IDENTIFIER COLON IDENTIFIER 
  min = min < max ? min : max if max	# IDENTIFIER EQUAL IDENTIFIER LT IDENTIFIER TER IDENTIFIER COLON IDENTIFIER KEYWORD_IF IDENTIFIER 
  min.times do |i|	# IDENTIFIER DOT IDENTIFIER KEYWORD_DO VERBAR IDENTIFIER VERBAR 
    return s1.slice(0, i) if s1[i] != s2[i]	# KEYWORD_RETURN IDENTIFIER DOT IDENTIFIER LPAREN INT COMMA IDENTIFIER RPAREN KEYWORD_IF IDENTIFIER LSQB IDENTIFIER RSQB NOTEQ IDENTIFIER LSQB IDENTIFIER RSQB 
  end	# KEYWORD_end 
  return s1.slice(0, min)	# KEYWORD_RETURN IDENTIFIER DOT IDENTIFIER LPAREN INT COMMA IDENTIFIER RPAREN 
end	# KEYWORD_end 
 
 
# Returns the longest repeated substring in a given string. 
def longest_repeated_substring(string)	# KEYWORD_DEF IDENTIFIER LPAREN IDENTIFIER RPAREN 
  size = string.length	# IDENTIFIER EQUAL IDENTIFIER DOT IDENTIFIER 
 
  # put every possible suffix into an array 
  suffixes = Array.new(size)	# IDENTIFIER EQUAL CONST DOT IDENTIFIER LPAREN IDENTIFIER RPAREN 
  size.times do |i|	# IDENTIFIER DOT IDENTIFIER KEYWORD_DO VERBAR IDENTIFIER VERBAR 
    suffixes[i] = string.slice(i, size)	# IDENTIFIER LSQB IDENTIFIER RSQB EQUAL IDENTIFIER DOT IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER RPAREN 
  end	# KEYWORD_end 
 
  # sort the array of suffixes, so common substrings (i.e., prefixes 
  # of suffixes) will be found in neighboring elements of the array 
  suffixes.sort!	# IDENTIFIER DOT IDENTIFIER NOT 
 
=begin etgrtgrt 
ertgrtg 
retgretgb 
retbrtb 
rtbrtb 
retbrtb 
=end here = 1	# IDENTIFIER EQUAL INT 
 
  best = ""	# IDENTIFIER EQUAL STRING 
  at_least_size = 1    # the size to meet or exceed to be the new best	# IDENTIFIER EQUAL INT 
  distance = nil	# IDENTIFIER EQUAL KEYWORD_NIL 
  neighbors_to_check = 1	# IDENTIFIER EQUAL INT 
 
  # compare pairs of consecutive suffixes and see how much initial 
  # commonality there is 
  # (size - 1).times do |i| 
  (1...size).each do |i|	# LPAREN INT SEQEX IDENTIFIER RPAREN DOT IDENTIFIER KEYWORD_DO VERBAR IDENTIFIER VERBAR 
    # p [i, neighbors_to_check] 
    s1 = suffixes[i]	# IDENTIFIER EQUAL IDENTIFIER LSQB IDENTIFIER RSQB 
 
    # generally we will only need to \n compare\n the\n ith\n item and the one 
    # preceding it; however if we were in a position to reject a long 
    # enough common substring due to overlap issues, then we may have 
    # to compare an ith item with additional preceding items; 
    # neighbors_to_check tracks how many neighbors we need to check 
    neighbors_to_check.downto(1) do |neighbor|	# IDENTIFIER DOT IDENTIFIER LPAREN INT RPAREN KEYWORD_DO VERBAR IDENTIFIER VERBAR 
      s2 = suffixes[i - neighbor]	# IDENTIFIER EQUAL IDENTIFIER LSQB IDENTIFIER MINUS IDENTIFIER RSQB 
 
      # make sure that these to suffixes further apart than the size 
      # of the current best; we don't explicitly track the index of 
      # these suffixes, but since all suffixes go to the end of the 
      # initial string, the size can be used as a proxy 
      distance = (s1.size - s2.size).abs	# IDENTIFIER EQUAL LPAREN IDENTIFIER DOT IDENTIFIER MINUS IDENTIFIER DOT IDENTIFIER RPAREN DOT IDENTIFIER 
      if distance < at_least_size	# KEYWORD_IF IDENTIFIER LT IDENTIFIER 
        if s1.size >= at_least_size &&	# KEYWORD_IF IDENTIFIER DOT IDENTIFIER GTEQUAL IDENTIFIER AND 
            s2.size >= at_least_size &&	# IDENTIFIER DOT IDENTIFIER GTEQUAL IDENTIFIER AND 
            s1.slice(0, at_least_size) == s2.slice(0, at_least_size)	# IDENTIFIER DOT IDENTIFIER LPAREN INT COMMA IDENTIFIER RPAREN EQEQUAL IDENTIFIER DOT IDENTIFIER LPAREN INT COMMA IDENTIFIER RPAREN 
          neighbors_to_check = max(neighbors_to_check, neighbor + 1)	# IDENTIFIER EQUAL IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER PLUS INT RPAREN 
        else	# KEYWORD_ELSE 
          neighbors_to_check = neighbor	# IDENTIFIER EQUAL IDENTIFIER 
        end	# KEYWORD_end 
        next	# KEYWORD_NEXT 
      end	# KEYWORD_end 
 
      # if neighboring suffixes don't at least match as far as the best, 
      # no need to check more carefully 
      unless s1.slice(0, at_least_size) == s2.slice(0, at_least_size)	# KEYWORD_UNLESS IDENTIFIER DOT IDENTIFIER LPAREN INT COMMA IDENTIFIER RPAREN EQEQUAL IDENTIFIER DOT IDENTIFIER LPAREN INT COMMA IDENTIFIER RPAREN 
        neighbors_to_check = neighbor	# IDENTIFIER EQUAL IDENTIFIER 
        next	# KEYWORD_NEXT 
      end	# KEYWORD_end 
 
      # get the longest common prefix that's no larger than distance, 
      # since at that point the substrings overlap 
      best = longest_common_prefix(s1, s2, distance)	# IDENTIFIER EQUAL IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER COMMA IDENTIFIER RPAREN 
      at_least_size = best.size + 1	# IDENTIFIER EQUAL IDENTIFIER DOT IDENTIFIER PLUS INT 
      if best.size == distance	# KEYWORD_IF IDENTIFIER DOT IDENTIFIER EQEQUAL IDENTIFIER 
        neighbors_to_check = max(neighbors_to_check, neighbor + 1)	# IDENTIFIER EQUAL IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER PLUS INT RPAREN 
      else	# KEYWORD_ELSE 
        neighbors_to_check = neighbor	# IDENTIFIER EQUAL IDENTIFIER 
      end	# KEYWORD_end 
    end	# KEYWORD_end 
  end	# KEYWORD_end 
 
  best	# IDENTIFIER 
end	# KEYWORD_end 
 
if $0 == __FILE__	# KEYWORD_IF DOL0 EQEQUAL UNDERSCORE UNDERSCORE CONST 
  string = nil	# IDENTIFIER EQUAL KEYWORD_NIL 
  if ARGV[0] == "-f"	# KEYWORD_IF CONST LSQB INT RSQB EQEQUAL STRING 
    open(ARGV[1]) do |f|	# IDENTIFIER LPAREN CONST LSQB INT RSQB RPAREN KEYWORD_DO VERBAR IDENTIFIER VERBAR 
      string = f.read	# IDENTIFIER EQUAL IDENTIFIER DOT IDENTIFIER 
    end	# KEYWORD_end 
  elsif ARGV.size == 0	# KEYWORD_ELSIF CONST DOT IDENTIFIER EQEQUAL INT 
    string = STDIN.read	# IDENTIFIER EQUAL CONST DOT IDENTIFIER 
  elsif ARGV[0] =~ /^-/ || ARGV.size > 1	# KEYWORD_ELSIF CONST LSQB INT RSQB EQUAL BITCOMP DIV BITXOR MINUS DIV OR CONST DOT IDENTIFIER GT INT 
    STDERR.puts "usage:"	# CONST DOT IDENTIFIER STRING 
    STDERR.puts "    #{$0} (note: input comes from standard input)"	# CONST DOT IDENTIFIER STRING 
    STDERR.puts "    #{$0} string"	# CONST DOT IDENTIFIER STRING 
    STDERR.puts "    #{$0} -f filename"	# CONST DOT IDENTIFIER STRING 
    exit	# IDENTIFIER 
  else	# KEYWORD_ELSE 
    string = ARGV[0]	# IDENTIFIER EQUAL CONST LSQB INT RSQB 
  end	# KEYWORD_end 
 
  result = longest_repeated_substring(string)	# IDENTIFIER EQUAL IDENTIFIER LPAREN IDENTIFIER RPAREN 
  puts result && "\"#{result}\" (#{result.length} characters)" || "none"	# IDENTIFIER IDENTIFIER AND STRING OR STRING 
end	# KEYWORD_end
