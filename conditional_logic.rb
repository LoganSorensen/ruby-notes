# every value except nil and false evaluates to true

# if statements
if 1 < 2
  puts "Math is working correctly"
end
# can be written on one line if the block only contains one line:
puts "Math is working correctly" if 1 < 2
if 1 < 2 then puts "Math is working correctly" end
puts "Math is broken" unless 1 < 2

# else and elsif
if condition == true
  puts "condition is true"
else
  puts "condition is false"
end

if condition == true
  puts "condition is true"
elsif condition_two == true
  puts "condition two is true"
else
  puts "neither condition is true"
end

## Comparison Operators

== #returns true if the values are equal
!= #returns true if the values are not equal
> #returns true if the value on the left is greater than the value on the right
< #returns true if the value on the left is less than the value on the right
>= #returns true if the value on the left is greater than or equal to the value on the right
<= #returns true if the value on the left is less than or equal to the value on the right
eql? #checks both the value type and the actual value
5.eql?(5.0) #=> false
5.eql?(5) #=> true
equal? #checks whether both values are the exact same object in memory
a = 5
b = 5
a.equal?(b) #=> true because of the way computers store integers in memory

a = "hello"
b = "hello"
a.equal?(b) #=> false, because the computer created two separate string objects in memory

<=> #spaceship operator returns the following:
# -1 if the value on the left is less than the value on the right
# 0 if the value on the left is equal to the value on the right
# -1 if the value on the left is greater than the value on the right
5 <=> 10 #=> -1
10 <=> 10 #=> 0
10 <=> 5 #=> 1

## Logical Operators
&& #and, returns true if both expressions are true
|| #or, returns true if either expression is true
! #not, reverses the logic of the expression

## Case Statements
grade = 'F'

did_i_pass = case grade
  when 'A' then 'Capital!'
  when 'D' then 'Egads! This is preposterous!'
  else "Something else"
end
puts did_i_pass #=> "Something else"

a = 5

case a
  when 5
    puts "a is 5"
  when 6
    puts "case is 6"
  else
    puts "a is neither 5, nor 6"
end

# Unless statement
# works in the opposite way as an if statement, only processes the code in the block if the expression is false
age = 18
unless age < 17
  puts "Get a job"
end

# Ternary operator
age = 18
response = age < 17 ? "You still have you whole life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."