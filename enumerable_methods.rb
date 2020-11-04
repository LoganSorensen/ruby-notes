# each allows an operation to be performed on each item in an array

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts "Hello, " + friend }

#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun

# when used on hashes, each has access to both the key and the value

my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }

one is 1
two is 2
#=> { "one" => 1, "two" => 2}

my_hash.each { |pair| puts "the pair is #{pair}" }

the pair is ["one", 1]
the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}

# each_with_index works in a similar way to each, but provides two block variables (the element and its index) when iterating through and array

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]


# map/collect transforms each element in an array according to the block and returns the transformed elements in a new array
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]

# select/filter iterates over an array and and returns an new array with only the elements that evaluated to true in the block's condition
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }

# every friend except Brian returned true when evaluted against != Brian
#=> ["Sharon", "Leo", "Leila", "Arun"]

# reduce/inject reduces a hash or array down to a single object
# useful for obtaining the sum of an array of numbers
my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }
#=> 26

# the initial value for the accumultor is the first element in the array, although another value can be specified:
my_numbers = [5, 6, 7, 8]

my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026

# bang methods modify the original object they're called on, many enumerable methods have bang variants
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

# & can be used for a method that doesn't require any arguments
["11", "21", "5"].amp(&:to_i)