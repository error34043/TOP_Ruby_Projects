# Done - Compare each pair of elements. If element 1 is lower, leave it as such. If element 2 is lower, swap the two.
# Done - Number of passes required = n - 1 where n is the number of elements in the list
# Done - After m iterations through the array, the rightmost m elements are guaranteed to be sorted. So on the first iteration, sort n elements. On the second iteration, sort n - 1 elements, and so on.

# After each iteration, check if the array is already sorted. Do this by raising a flag variable set to false. If any swaps are made in an iteration, its value is set to true. If after the entire iteration, the flag variable's value is true, make another iteration. If after the entire iteration, the flag variable's value is false, stop sorting.
# Check that input is valid. If not, restart.

# Function to bubble sort a single pair of numbers
def sort_pair(arr)
  if arr[0] > arr[1]
    sorted_arr = [arr[1], arr[0]]
  else
    sorted_arr = arr
  end
end

# Function to bubble sort a whole array
def bubblesort(arr)
  result_arr = arr
  length = arr.length
  i = 0
  j = length - 1
  while i < length - 1
    for k in 0..j do
      if (arr[k + 1])
        arr_to_check = arr[k..k+1]
        result_arr[k..k + 1] = sort_pair(arr_to_check)
      end
    end
    i += 1
    j -= 1
  end
  result_arr
end

# p bubblesort([6,5,8,52,40,27,83,1,245,32])

# Get the numbers to test as a string input, convert it to an array
print('What numbers would you like sorted? Please enter them in the style of x,y,z,...: ')
user_str = gets.chomp
inp_arr = user_str.split(",").map { |n| n.to_i }
p bubblesort(inp_arr)




=begin
  Testing:

  Input = 4,3,78,2,0,2
  Expected output: [0,2,2,3,4,78]
=end