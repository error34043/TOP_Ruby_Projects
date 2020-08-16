# Howdy partner, sit down! How's it going? <= Taken from the TOP site to use for testing
print "Gimme a string to check: "
inp_string = gets.chomp

# below,down,go,going,horn,how,howdy,it,i,low,own,part,partner,sit <= Taken from the TOP site to use for testing
print "Gimme a list of words to check against (of the type 'a,b,c, ...): "
inp_dictionary = gets.chomp
dictionary = inp_dictionary.split(",")

# Function to find the words in the dictionary present in the inp_string and return a hash with the words and the number of times they appear; Function maintains the order of words/sub strings in the inputted dictionary
def substrings(str, dict)
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

puts substrings(inp_string, dictionary)