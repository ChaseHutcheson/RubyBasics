# In Ruby conditionals there are truthy and falsy checks.
# The only false values in ruby are nil and false, so anything else is truthy.
value = 0

if value
    puts "Truthy"
else 
    puts "Falsy"
end

value = false

if value
    puts "Truthy"
else 
    puts "Falsy"
end

# Basic if-else statements only execute the code after the if, if the condition it true/truthy
# True if else:
if 1 < 2
    puts "1 < 2"
else
    puts "1 > 2"
end

hello_string = "Hello"

if hello_string
    puts "hello_string has a value that isnt false"
else
    puts "hello_string doesnt have a value or the value is false"
end

# Conditionals can be in 1 line if you do nothing on an else
puts "Hot diggity damn, 1 is less than 2" if 1 < 2

# Elses are code blocks that 1: only work after an if and 2: run if the if is wrong

if 1 > 2
    puts puts "1 > 2"
else
    puts "1 < 2"
end

# There are also else-if's or elsif's that are conditonals that run if the parent conditional is false

if 1 > 1
    puts puts "1 > 1"
elsif 1 == 1
    puts "1 = 1"
else
    puts "1 < 1"
end

# Boolean operators
# == returns true if the values compared are equal
# != returns true if the values compared are not equal
# > returns true if the left value is greater than the right value
# < returns true if the left value is less than the right value
# >= returns true if the left value is greater than or equal to the right value
# <= returns true if the left value is less than or equal to the right value