# Addition
1 + 1  #=> 2

# Subtraction
2 - 1 #=> 1

# Multiplication
2 * 2 #=> 4

# Division
10 / 5 #=> 2

# Exponent
2 ** 2 #=> 4
3 ** 4 #=> 81

# Modulus
8 % 2 #=> 0
10 % 4 #=> 2

# Ruby differentiates between integers and floats
# Arithmetic done on integers will always produce an integer as a result
17 / 5 #=> 3, not 3.4
# In order to obtain an accurate answer, one of the numbers in the expression needs to be replaced with a float
17 / 5.0 #=> 3.4

# To convert an integer to a float:
13.to_f #=> 13.0

# To convert a float to an integer:
13.0.to_i #=> 13
13.9.to_i #=> 13
# No rounding occurs in this process, the decimal is simply removed

# Method for checking if a number is even or odd
6.even? #=> true
7.even? #=> false

6.odd? #=> false
7.odd? #=> true