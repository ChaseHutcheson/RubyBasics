# Strings can be made with "" or ''. (NOTE: string interpolation and escape sequences only work in "", not '')
puts "Hello, World!"
puts 'Hello, World!', "\n"

# You can concatenate strings using:
# 1.) The + operator
puts "Plus " + "Operator"

# 2.) The shovel (<<) operator
puts "Shovel " << "Operator"

# 3.) The concat method operator
puts "Concat ".concat("Method"), "\n"

# You can access substring within strings using an index. There are multiple methods you can use (Note: Blank prints == nil/null).
# Index (Note: Negative indexes start from the end and go backwards):
puts "Index"[2]
puts "Negative Index"[-2]

# Start, Length (Note: Negative starts start the substring from the end counting back. There can be no negative lengths)
puts "Start, Length"[1, 4]
puts "Start, Length"[-1, 4]

# Range
puts "Range"[1..4]
puts "Negative Range"[-2..4]

# Range
puts "Range"["ang"]
puts "Negative Range"["foo"], "\n"

# Escape characters either allow quotes, slashes or represent whitespacees like Tab or Newline
# \\  #=> Need a backslash in your string
# \b  #=> Backspace
# \r  #=> Carriage return
# \n  #=> Newline
# \s  #=> Space
# \t  #=> Tab
# \"  #=> Double quotation mark
# \'  #=> Single quotation mark

# Interpolation lets you insert variables into double quoted strings
name = "Chase"

puts "My name is #{name}."
puts 'My name is #{name}.', "\n"

# String Methods
# Capitalize capitalizes the first char in the string:
puts "hello, World!".capitalize

# Include returns a bool is the string param is a substring of the string:
puts "Hello, World!".include?("Hello")
puts "Hello, World!".include?("Goodbye")

# Upcase capitalizes all chars in the string
puts "Hello, World!".upcase

# Upcase uncapitalizes all chars in the string
puts "HELLO, WORLD!".downcase

# Split returns an array of substrings that are seperated by a seprator
print "Hello, World".split(", "), "\n"
print "Hello, World!".split(""), "\n"

# Strip removes leading and ending whitespace
puts "       Hello, World!               ".strip

# Others
puts "he77o".sub("7", "l")

puts "he77o".gsub("7", "l")

puts "hello".insert(-1, " dude")

puts "hello world".delete("l")

puts "!".prepend("hello, ", "world"), "\n"

# Converting objects to strings
puts 5.to_s
puts 5.3.to_s
puts nil.to_s
puts :symbol.to_s