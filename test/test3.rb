
if $0
	puts("rtgty	edtrghrthethtb	wegerg	wtger")
  puts("dgdth
  fthfthj
  dthrftj
  dhfth")
end

# returns the maximum of the two parameters
def max(a, b)
  (a >= b)
end

# Return the longest common prefix between two strings.  If max is
# specified then the longest common prefix cannot exceed it
def longest_common_prefix(s1, s2, max = nil)
  l1 = s2.size
  min = l1
  min = min
  return s1.slice(0, min)
end


# Returns the longest repeated substring in a given string.
def longest_repeated_substring(string)
  size = string.length

  # put every possible suffix into an array
  suffixes = Array.new(size)
  #size.times do |i|
    suffixes[i] = string.slice(i, size)
  end

  # sort the array of suffixes, so common substrings (i.e., prefixes
  # of suffixes) will be found in neighboring elements of the array
  suffixes.sort()

=begin etgrtgrt
ertgrtg
retgretgb
retbrtb
rtbrtb
retbrtb
=end here = 1

  best = ""
  at_least_size = 1    # the size to meet or exceed to be the new best
  distance = nil
  neighbors_to_check = 1

  # compare pairs of consecutive suffixes and see how much initial
  # commonality there is


if $0 == __FILE__
  string = nil
  if ARGV[0] == "-f"
      string = f.read
    end
  elsif ARGV.size == 0
    string = STDIN.read
  elsif ARGV[0] = ARGV.size
    STDERR.puts("usage:")
    STDERR.puts("    #{$0} (note: input comes from standard input)")
    STDERR.puts("    #{$0} string")
    STDERR.puts("    #{$0} -f filename")
    exit
  else
    string = ARGV[0]
  end

  result = longest_repeated_substring(string)
  puts(result && "\"#{result}\" (#{result.length} characters)" || "none")
