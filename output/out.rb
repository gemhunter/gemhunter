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
if $0	# KEYWORD_IF 
  puts "wefhi	# IDENTIFIER 
  wefhiwef 
  wefhiwef 
  jwoef" 
end	# KEYWORD_end 
 
# returns the maximum of the two parameters 
def max(a, b)	# KEYWORD_DEF 
  a >= b ? a : b	# IDENTIFIER 
end	# KEYWORD_end 
 
 
# Return the longest common prefix between two strings.  If max is 
# specified then the longest common prefix cannot exceed it 
def longest_common_prefix(s1, s2, max = nil)	# KEYWORD_DEF 
  l1, l2 = s1.size, s2.size	# IDENTIFIER 
  min = l1 < l2 ? l1 : l2	# IDENTIFIER 
  min = min < max ? min : max if max	# IDENTIFIER 
  min.times do |i|	# IDENTIFIER 
    return s1.slice(0, i) if s1[i] != s2[i]	# KEYWORD_RETURN 
  end	# KEYWORD_end 
  return s1.slice(0, min)	# KEYWORD_RETURN 
end	# KEYWORD_end 
 
 
# Returns the longest repeated substring in a given string. 
def longest_repeated_substring(string)	# KEYWORD_DEF 
  size = string.length	# IDENTIFIER 
 
  # put every possible suffix into an array 
  suffixes = Array.new(size)	# IDENTIFIER 
  size.times do |i|	# IDENTIFIER 
    suffixes[i] = string.slice(i, size)	# IDENTIFIER 
  end	# KEYWORD_end 
 
  # sort the array of suffixes, so common substrings (i.e., prefixes 
  # of suffixes) will be found in neighboring elements of the array 
  suffixes.sort!	# IDENTIFIER 
 
=begin etgrtgrt 
ertgrtg 
retgretgb 
retbrtb 
rtbrtb 
retbrtb 
=end here = 1	# IDENTIFIER 
 
  best = ""	# IDENTIFIER 
  at_least_size = 1    # the size to meet or exceed to be the new best	# IDENTIFIER 
  distance = nil	# IDENTIFIER 
  neighbors_to_check = 1	# IDENTIFIER 
 
  # compare pairs of consecutive suffixes and see how much initial 
  # commonality there is 
  # (size - 1).times do |i| 
  (1...size).each do |i|	# LPAREN 
    # p [i, neighbors_to_check] 
    s1 = suffixes[i]	# IDENTIFIER 
 
    # generally we will only need to \n compare\n the\n ith\n item and the one 
    # preceding it; however if we were in a position to reject a long 
    # enough common substring due to overlap issues, then we may have 
    # to compare an ith item with additional preceding items; 
    # neighbors_to_check tracks how many neighbors we need to check 
    neighbors_to_check.downto(1) do |neighbor|	# IDENTIFIER 
      s2 = suffixes[i - neighbor]	# IDENTIFIER 
 
      # make sure that these to suffixes further apart than the size 
      # of the current best; we don't explicitly track the index of 
      # these suffixes, but since all suffixes go to the end of the 
      # initial string, the size can be used as a proxy 
      distance = (s1.size - s2.size).abs	# IDENTIFIER 
      if distance < at_least_size	# KEYWORD_IF 
        if s1.size >= at_least_size &&	# KEYWORD_IF 
            s2.size >= at_least_size &&	# IDENTIFIER 
            s1.slice(0, at_least_size) == s2.slice(0, at_least_size)	# IDENTIFIER 
          neighbors_to_check = max(neighbors_to_check, neighbor + 1)	# IDENTIFIER 
        else	# KEYWORD_ELSE 
          neighbors_to_check = neighbor	# IDENTIFIER 
        end	# KEYWORD_end 
        next	# KEYWORD_NEXT 
      end	# KEYWORD_end 
 
      # if neighboring suffixes don't at least match as far as the best, 
      # no need to check more carefully 
      unless s1.slice(0, at_least_size) == s2.slice(0, at_least_size)	# KEYWORD_UNLESS 
        neighbors_to_check = neighbor	# IDENTIFIER 
        next	# KEYWORD_NEXT 
      end	# KEYWORD_end 
 
      # get the longest common prefix that's no larger than distance, 
      # since at that point the substrings overlap 
      best = longest_common_prefix(s1, s2, distance)	# IDENTIFIER 
      at_least_size = best.size + 1	# IDENTIFIER 
      if best.size == distance	# KEYWORD_IF 
        neighbors_to_check = max(neighbors_to_check, neighbor + 1)	# IDENTIFIER 
      else	# KEYWORD_ELSE 
        neighbors_to_check = neighbor	# IDENTIFIER 
      end	# KEYWORD_end 
    end	# KEYWORD_end 
  end	# KEYWORD_end 
 
  best	# IDENTIFIER 
end	# KEYWORD_end 
 
 
if $0 == __FILE__	# KEYWORD_IF 
  string = nil	# IDENTIFIER 
  if ARGV[0] == "-f"	# KEYWORD_IF 
    open(ARGV[1]) do |f|	# IDENTIFIER 
      string = f.read	# IDENTIFIER 
    end	# KEYWORD_end 
  elsif ARGV.size == 0	# KEYWORD_ELSIF 
    string = STDIN.read	# IDENTIFIER 
  elsif ARGV[0] =~ /^-/ || ARGV.size > 1	# KEYWORD_ELSIF 
    STDERR.puts "usage:"	# CONST 
    STDERR.puts "    #{$0} (note: input comes from standard input)"	# CONST 
    STDERR.puts "    #{$0} string"	# CONST 
    STDERR.puts "    #{$0} -f filename"	# CONST 
    exit	# IDENTIFIER 
  else	# KEYWORD_ELSE 
    string = ARGV[0]	# IDENTIFIER 
  end	# KEYWORD_end 
 
  result = longest_repeated_substring(string)	# IDENTIFIER 
  puts result && "\"#{result}\" (#{result.length} characters)" || "none"	# IDENTIFIER 
end	# KEYWORD_end
