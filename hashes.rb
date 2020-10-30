# hashes can be created using has literals, or by calling the new method on the Hash class
my_hash = {}
my hash = Hash.new

# keys can be any data type(?), including arrays and even other hashes

# values can be accessed in the same way as arrays
shoes = {
    "summer" => "sandals",
    "winter" => "boots"
}

shoes["summer"] #=> "sandals"
# keys that don't exist will return nil
shoes["hiking"] #=> nil
# using the fetch method will return an error if the key does not exist
shoes.fetch("hiking") #=> KeyError: key not found: "hiking"
# the fetch method can also return a default value instead of raising an error
shoes.fetch("hiking", "hiking boots") #=> "hiking boots"

# adding and updating a key-value pair
shoes["fall"] = "fall shoes?"
shoes #=> { "summer" => "sandals","winter" => "boots", "fall" => "fall shoes?" }
shoes["summer"] = "flip-flops"
shoes #=> { "summer" => "flip-flops","winter" => "boots", "fall" => "fall shoes?" }

# key-value pairs can be removed using the delete method, this method returns the pair that was removed
shoes.delete("summer")
shoes #=> { "winter" => "boots", "fall" => "fall shoes?" }

# key/value methods return an array of the keys and values of a hash
shoes.keys #=> ["winter", "fall"]
shoes.values #=> ["boots", "fall shoes?"]

# has_key? checks if a hash has a given key, returns a boolean
shoes.has_key?("spring") #=> false

# select
name_and_age = {
    "Bob" => 42,
    "Steve" => 31,
    "Joe" => 19
}
name_and_age.select{ |k,v| k == "Bob" } #=> {"Bob"=>42}
name_and_age.select{ |k,v| (k == "Bob") || (v == 19) } #=> {"Bob"=>42, "Joe"=>19}

# to_a will return the hash converted to an array
name_and_age.to_a #=> [["Bob", 42], ["Steve", 31], ["Joe", 19]]

# merging hashes
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2) #=> { "a" => 100, "b" => 254, "c" => 300 }
# if the two hashes share a key, the key from the hash being merged in (hash2) will overwrite the other

# symbols are more common hash keys, as they are more performant

# "rocket" syntax
american_cars = {
    :chevrolet => "Corevette",
    :ford => "Mustang",
    :dodge => "Challenger"
}

# "symbols" syntax
japanese_cars = {
    honda: "Accord",
    toyota: "Corolla",
    nissan: "Altima"
}
# the symbol syntax only works on symbols, other kinds of keys (e.g. numbers) will throw an error

# both hashes can be accessed in the same way
american_cars[:chevrolet]
japanese_cars[:nissan]

# iterating over hashes
person = {
    name: "Rupert",
    height: "6 ft",
    weight: "160lbs",
    hair: "brown"
}

person.each do |key, value|
    puts "#{person[:name]}\'s #{key} is #{value}"
end
# =>
# Rupert's name is Rupert
# Rupert's height is 6 ft
# Rupert's weight is 160lbs
# Rupert's hair is brown


# this is just clever
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
    'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
    'flow', 'neon']

result = {}

words.each do |word|
    key = word.split('').sort.join
    if result.has_key?(key)
        result[key].push(word)
    else
        result[key] = [word]
end
end

result.each_value do |v|
    puts "------"
    p v
end
