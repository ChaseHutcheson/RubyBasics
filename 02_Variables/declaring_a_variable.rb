# Variable declaration (Note: Names are reusable, you can overwrite a variable name later in the program, as shown below):
age =  17
puts age

# Variables can be expressions
age = 17 + 4
puts age

# Variable incrementaton
age = 14
age += 20
puts age

# Variable Decrementation
age = 14
age -= 20
puts age

# Other assignment opperators for other common math operations
age = 14
age *= 2
puts age

age = 14
age /= 2
puts age

# Variable names should describe them, as clearly as possible
# Bad variable names:
a = 17
string = "Chase"

# Good variable names:
age = 17
name = "Chase"


# Variables can be assigned to other variables
first_variable = "Hello, World"
second_variable = first_variable

puts first_variable
puts second_variable

# This can cause unexpected behavior if the parent variable is modified
first_variable.upcase!

puts first_variable
puts second_variable