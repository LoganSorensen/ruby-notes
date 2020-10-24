# strings can use either "" or '', however, string interpolation and escape characters only work inside double quotes

# concatenation with the plus operator:
"Hello " + "World!" #=> "Hello World!"

# concatenate with the shovel operator:
"Hello " << "World" << "!" #=> "Hello World!"

# concatenate with the concat method:
"Hello ".concat("World").concat("!") #=> "Hello World!"

# Accessing substrings
"hello"[0] #=> "h"
"hello"[0..1] #=> "he"
"hello"[0,4] #=> "hell"
"hello"[-1] #=> "0"

# Escape characters
\t #=> tab
\b #=> backspace
\r #=> return
\n #=> newline
\s #=> space

# Interpolation

name = Logan

puts "Hello #{name}" #=> "Hello Logan"
puts 'Hello #{name}' #=> "Hello #{name}"

# String Methods

# capitalize
"hello.".capitalize #=> "Hello"

# include?
"hello.".include?("lo") #=> true
"hello.".include?("z") #=> false

# upcase
"hello".upcase #=> "HELLO"

# downcase
"HeLLo".downcase #=> "hello"

# emmpty?
"hello".empty? #=> false
"".empty? #=> true

# length
"hello".length #=> 5

# reverse
"hello".reverse #=> "olleh"

# split
"hello world".split #=> ["hello", "world"]
"hello".split #=> ["h", "e", "l", "l", "o"]

# strip
"hello, world    ".strip #=> "hello, world"

# sub
"hello".sub("7", "l") #=> "he7lo"

# gsub
"he77o".gsub("7", "l") #=> "hello"

# insert
"hello".insert(-1, " dude") #=> "hello dude"

# prepend
"!".prepend("hello, ", "world") #=> "hello, world!"

# string conversion
5.to_s #=> "5"
nil.to_s #=> ""
:symbol.to_s #=> "symbol"
