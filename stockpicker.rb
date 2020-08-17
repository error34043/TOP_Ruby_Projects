def find_max_per_day(arr)
  results = []

  # Initialize an empty hash and set the keys of the new hash to be all remaining indices in the input array
  final_index = arr.length - 1
  arr.each_with_index do |price, index|
    remaining_prices = (index+1..final_index).to_a
    diff_hash = remaining_prices.each_with_object(nil).to_h

    # Set the values of each key to be the difference between the price on the day being considered and the price on the day the key corresponds to
    diff_hash.each do |k,v|
      diff_hash[k] = arr[k] - price
    end

    # Return a new array of the sort: [day/index of input array under consideration, day/index of input array with the maximum profit value, maximum profit value]
    day_result_arr = [index, diff_hash.key(diff_hash.values.max), diff_hash.values.max]
    
    # Push newly returned array to a results array containing all such arrays for each day
    results.push(day_result_arr)
  end

  # Check each array contained in the results array and return only the array with the maximum value at index 2 (which holds the profit)
  final_max = []
  max_profit = 0
  test_results = results[0..results.length-2]
  test_results.each do |arr|
    if arr[2] > max_profit
      max_profit = arr[2]
      final_max = arr
    end
  end
  
  # Output
  puts "A maximum profit worth $#{max_profit} per share can be obtained by buying stock on day #{final_max[0]} and selling on day #{final_max[1]}."
end

# Get input and convert it to an array of prices with the indexes corresponding to days (days start at 0)
print 'Gimme an list of prices, one price a day, of the sort a,b,c,...: '
pricelist = gets.chomp
prices_arr = pricelist.split(",").map { |n| n.to_i }

# Run the function to find the combination of days to buy and sell that gives the maximum profit
find_max_per_day(prices_arr)