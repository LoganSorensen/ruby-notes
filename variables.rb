# creating a variable:
age = 18
puts age #=> 18

# variables can be reassigned
age = 22
puts age #=> 22

# operations can be performed on variables
age = age + 4
# or
age += 4
# other assignment operators include -= *= and /=

# snake case is the convention for naming variables

a = 4
b = a
puts "a is #{a}, b is #{b}" #=> "a is 4, b is 4"
a = 7
puts "a is #{a}, b is #{b}" #=> "a is 7, b is 4"

# the gets method allows the program to accept user input
name = gets # this line requires input fromt he user, which will then be assigned to the variable "name"

# Variable Scope
# inner scope can access variables initialized in an outer scope, but not vice versa

# Variable Types

# Constants
# declared using all caps
# reserved for values that should never change, although Ruby allows constant values to be changed
MY_CONSTANT = "I am available throughout your app."

# Globals
# declared by starting the variable name with a $
# available throughout the whole app, overiding scope boundaries
$var = 'I am also available throughout your app.'

# Class variables
# declared by using @@
# accessible by instances of a class, as well as the class itself
# must be initialized at the class level
@@instances = 0

# Instance variables
# decalred using a single @
# can cross some scope boundaries, but not all
@var = 'I am available throughout the current instance of this class.'

# Local variables
# declared without any special symbol or capitalization
var = 'I must be passed around to cross scope boundaries.'