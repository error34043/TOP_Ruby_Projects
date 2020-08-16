dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print "Gimme a string to check: "
inp_string = gets.chomp

def substrings(str,dict)
  results = Hash[dict.map { |word| [word, 0] }]
  str_arr = str.downcase.split(" ")
  str_arr.each do |i|
    dict.each do |j|
      if i.include?(j)
        results[j] += 1
      end
    end
  end
  results.keep_if { |k,v| v > 0 }
end

puts substrings(inp_string,dictionary)