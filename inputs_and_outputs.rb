## print vs puts
# puts appends a new line to the arguemnt passed in
# puts attempts to convert everthing to a string, meaning nil becomes a blank line
# both return nil

## gets command
# when the program encounters the "gets" command, execution will stop until user input is provided
# returns user input instead of nil, meaning that the input can be assigned to a variable (ex. name = gets)
# always returns a newline at the end of the input

# p can be used in place of puts, and is useful for debugging
# p also returns the object passed into it, rather than nil
p "Hello, world!\n" #=> "Hello, world!\n"
puts "Hello, world!\n" #=> Hello, world!

# putc can be used to output one character at a time
str = "Hello"
putc str #=> 'H'