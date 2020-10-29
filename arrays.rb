# arrays can be created using array literals i.e. [] or using the Array.new method
num_arr = [1, 2, 3, 4, 5]
# optional arguments for Array.new are the initial size and default value
Array.new  #=> []
Array.new(3)  #=> [nil, nil, nil]
Array.new(3, "Hello")  #=> ["Hello", "Hello", "Hello"]
Array.new(3, Array.new)  #=> [[], [], []]

# %w can be used to avoid having to type "" around eeach element
users = ["john", "david", "peter"]
users = %w(john david peter)

# elements can be accessed by their index or by using the first and last methods
str_array = ["This", "is", "a", "small", "array"]

str_array[2] #=> "a"
str_array.first #=> "This"
str_array.first(2) #=> ["This", "is"]
str_array.last(2) #=> ["small", "array"]

# Adding and Removing Elements
num_array = [1, 2]

# push and pop add and remove from the end of the array
# the shovel operator can also be used in place of push
# push returns the array with the new elements, pop returns only the element removed
num_array.push(3, 4) #=> [1, 2, 3, 4]
num_array << 5 #=> [1, 2, 3, 4, 5]
num_array.pop #=> 5

# unshift and shift add and remove from the beginning of the array
# unshift returns the array, shift returns the element removed
num_array = [2, 3, 4]

num_array.unshift(1) #=> [1, 2, 3, 4]
num_array.shift #=> 1

# pop and shift can also take integer arguments, which represent how many elements will be removed from either side 
num_array = [1, 2, 3, 4, 5, 6]

num_array.pop(3) #=> [4, 5, 6]
num_array.shift(2) #=> [1, 2]
puts num_array #=> [3]

# arrays can be combined using either + or the concat method
a = [1, 2, 3]
b = [3, 4, 5]

a + b #=> [1, 2, 3, 3, 4, 5]
a.concat(b) #=> [1, 2, 3, 3, 4, 5]

# arrays can also be subtracted, which returns a copy of the first array minues any elements that appear in the second array
[1, 1, 1, 2, 2, 3, 4] - [1, 4] #=> [2, 2, 3]

# the & oeprator can be used to get elements that appear in two arrays
a = [1, 2, 3, 4, 5]
b = [1, 2, 3, 19]

a & b #=> [1, 2, 3]


## Array Methods
num_array.methods   #=> displays a list of methods 

[].empty #=> true
[[]].empty #=> false
[1, 2].empty #=> false

[1, 2, 3].length #=> 3
[1, 2, 3].size #=> 3

[1, 2, 3].reverse #=> [3, 2, 1]

[1, 2, 3].include?(3) #=> true
[1, 2, 3].include?("3") #=> false
# methods that end in ? are called predicates and usually return a boolean

[1, 2, 3].join #=> "123"
[1, 2, 3].join("-") #=> "1-2-3"

"a b c".split #=> ["a", "b", "c"]

# map/collect is used to loop over an array and modify each element in a similar way
# these methods are not destructive (i.e. they don't mutate the original array)
a = [1, 2, 3, 4]

a.map { |num| num**2 } #=> [1, 4, 9, 16]
a.collect { |num| num**2 } #=> [1, 4, 9, 16]

# delete_at will remove the element at a given index
a = [1, 2, 3, 4]

a.delete_at(1) #=> 2

# delete will remove all instances of a given value
my_pets = ["cat", "dog", "bird", "cat", "snake"]

my_pets.delete("cat") #=> "cat"
puts my_pets #=> ["dog", "bird", "snake"]

# uniq will loop over the array and delete any duplicate values, doesn't modify the original, however adding a ! will make it behave destructively
b = [1, 1, 2, 2, 3, 3, 4, 4]
b.uniq #=> [1, 2, 3, 4]
puts b #=> [1, 1, 2, 2, 3, 3, 4, 4]

b.uniq! #=> [1, 2, 3, 4]
puts b #=> [1, 2, 3, 4]

# the ! operator after an array method usually indicates that the method will mutate the original array

# select will loop over an array and return an array of elements that match the expression provided
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.select { |num| num > 4 } #=>  [5, 6, 7, 8, 9, 10]

# arrays can be compared for equality using ==
a = [1, 2, 3]
b = [1, 2, 3]
c = [1, 2, 3, 4]

a == b #=> true
a == c #=> false

# to_s can be used to convert the array to a string
a.to_s #=> "[1, 2, 3]"

# flatten is used to create a one dimensional array from a two dimensional one
a = [1, 2, [3, 4, 5], [6, 7]]
a.flatten #=> [1, 2, 3, 4, 5, 6, 7]

# each_index works like the each method, but the variable represents the index rather than the value at the index
a = [1, 2, 3, 4, 5]
a.each_index { |i| puts "This is index #{i}" }
# This is index 0
# This is index 1
# This is index 2
# This is index 3
# This is index 4

# each_with_index works in a similar way and can manipulate both the index and the value, the first param is the value and the second is the index
a = [1, 2, 3, 4, 5]
a.each_with_index { |val, idx| puts "#{val} is at index #{idx}" }
# 1 is at index 0
# 2 is at index 1
# 3 is at index 2
# 4 is at index 3
# 5 is at index 4

# sort orders an array
a = [5, 3, 8, 2, 4, 1]
a.sort #=> [1, 2, 3, 4, 5, 8]

# product
[1, 2, 3].product([4, 5]) #=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]

# sample will return a random element from an array
a = [1, 2, 3, 4, 5]
a.sample #=> who knows?

# compact will remove nil values
numbers = [1, 3, 3, 5, 5, nil]
numbers.compact #=> [1, 3, 3, 5, 5]

# each vs map
# each returns the original array, whereas map returns the modified array
# each is for iteration, map is for transformation