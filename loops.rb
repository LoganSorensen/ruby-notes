# the loop loop will run until a specified end condition is met using the break command
i = 0
loop do
    puts "is is #{i}"
    i += 1
    break if i == 10
end

# while loops are similar, but the break out condition is defined up front
i = 0
while i < 10 do
    puts "i is #{i}"
    i += 1
end

# until loops are the oppostie of while loops and run until a condition is met
i = 0
until i > 10 do
    puts "i is #{i}"
    i += 1
end

# Ranges
# used to establish how many times a loop should run
(1..5)  # inclusive range: 1, 2, 3, 4, 5
(1...5) # exclusive range: 1, 2, 3, 4
('a'..'d')  # a, b, c, d

# for loops are used to iterate through a collection of information like an array or range
for i in 0..5
    puts "#{i} is the current number in the range"
end

# a times loop will run a specified number of times
5.times do
    puts "Hello, world!"
end

5.times do |number|
    puts "#{number} is the current number"
end

# upto and downto loops can be used to iterate from a starting number up to or down to another number
5.upto(10) {|num| print "#{num} "} #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} "} #=> 10 9 8 7 6 5

# the next keyword can be used to skip an iteration of a loop
i = 0
loop do 
    if i == 2
        next
    end
    # or
    # next if i == 2
    puts "#{i} "
    break if i == 5
end
# output: 1 3 4 5

# Iterators
# methods that loop over a given set of data and allow operations to be performed on each element
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }