# Get input as an array of prices with the indexes corresponding to days (days start at 0)

# For Each day (index of input array),
  # Initialize an empty hash
  # Set the keys of the new hash to be all remaining indices in the input array
  # Set the values of each key to be the difference between the price on the day being considered [name of hash] and the price on the day the key corresponds to [key]
  # Return a new array of the sort: [day/index of input array under consideration, key/index of input array with the maximum value, maximum value]
  # Push newly returned array to a results array containing all such arrays for each day/index of the input array
  # Check each array contained in the results array and return only the array with the maximum value at index 2 (which holds the profit)

# Print final result of the sort: "A maximum profit worth #{max_profit/index 2 of result array} per share can be obtained by buying stock on ${day1_of_max_profit_pair/index 0 of result array} and selling on #{day2_of_max_profit_pair/index 1 of result array}."