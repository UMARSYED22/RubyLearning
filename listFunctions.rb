new_line="---------------------------------\n"
l=[1,6,5,2,3,7]
# puts l
puts l.length #length of list
puts l.max #maximum element from list
puts l.min #maximum element from list
l.sort!  # sort a list by doing some change
#exclamation denote it is changing something
# puts l
puts l[0]
puts l[1]
puts l[2]

array = Array.new          # => []
array = Array.new(3)       # => [nil, nil, nil]
array = Array.new(3, 0)    # => [0, 0, 0]
puts array



array = [1, 2,2,2,3,2, 4]
array[0]    # => 1
array[-1]   # => 4


array.at(2) # => 3

array.push(5)  # => [1, 2, 3, 4, 5]
array << 6     # => [1, 2, 3, 4, 5, 6]
array.unshift(0) # add element from start
array.shift() #delete elements from start
array.pop()#delete from last
array.delete(2) #delete all occurences of 2
puts array




# map: Create a new array by applying a block to each element.

new_array = array.map { |element| element * 2 } # => [2, 4, 8, 10]

# Querying
# include?: Check if an array includes a specific element.

array.include?(2) # => true

# empty?: Check if an array is empty.

puts array.empty? # => false

# Transformation
# sort: Return a new array with elements sorted.

sorted_array = array.sort # => [1, 2, 4, 5]

# reverse: Return a new array with elements in reverse order.

reversed_array = array.reverse # => [5, 4, 2, 1]

# Set Operations
# uniq: Return a new array with duplicate elements removed.

array_with_duplicates = [1, 2, 2, 3]
unique_array = array_with_duplicates.uniq # => [1, 2, 3]

# &: Intersection of arrays.

array1 = [1, 2, 3]
array2 = [2, 3, 4]
intersection = array1 & array2 # => [2, 3]
puts new_line
puts intersection