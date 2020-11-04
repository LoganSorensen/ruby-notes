# because Ruby is a purely object-oriented language, all functions are methods

# print and puts are both methods that are globally accessible
# the parentheses that follow the mathod name are generally optional

# creating a method
# Ruby offers an implicit return for methods, which means that the last expression evaluated will be returned
def my_name
    "Joe Smith"
    # is the same as: 
    # return "Joe Smith"
end

puts my_name #=> "Joe Smith"

# naming convention for methods is snake_case

# methods can accept parameters, and default values can be provided
def greet(name = "stranger")
    "Hello, #{name}!"
end

puts greet("John") #=> "Hello, John!"
puts greet #=> "Hello, stranger!"

# methods can be chained
phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize #=> "To be or not to be"

# predicate methods are those that return a boolean value, and are marked with a ?
puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true

# created methods can also include a ? at the end to indicate that they return a boolean


# bang methods, denoted with a !, modify the original value
whisper = "Hello everybody"
puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"
# this is the equivalent of writing whisper = whisper.downcase

# method invocations can be used as arguments
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def multiply(a, b)
    a * b
end
  
puts add(20, 45) #=> 65
puts subtract(80, 10) #=> 70
puts multiply(10, 5) #=> 50
puts multiply(add(20, 45), subtract(80, 10)) #=> 4550